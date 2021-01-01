# Needed so unit tests can mock out sourced file(s).
if ! command -v inScriptSource >/dev/null; then
	inScriptSource() { . "$@"; }
fi

##############
## Import(s) ##
##############
funcName="logging"
if [ -f $LOGGING_SHELL_FUNCTION_HOME/util/main.sh ]; then
	inScriptSource $LOGGING_SHELL_FUNCTION_HOME/util/main.sh
else
	echo "ERROR $funcName(): Couldn't find 'main.sh' file from LOGGING_SHELL_FUNCTION_HOME/util: '$LOGGING_SHELL_FUNCTION_HOME/util'." >&2
	exit 202
fi

################
## Function(s) ##
################
LOGGING_DOC=$(
	cat <<"EOF"
#/ DESCRIPTION:
#/	Used to produce log messages. Current global log level, tracked by
#/	'SHELL_LOG_LEVEL', is used to determine if given message should be printed.
#/
#/ USAGE: logging [SPECIAL_OPTION] [OPTIONS...] -m="message text"... [OPTIONS...]
#/
#/ NOTE(S):
#/	- Different shells render special characters, like tab and new line,
#/		differently. Thus if this doc contains any special characters that have
#/		two backslashes, know that only one is intended.
#/	- Method may not use log()... hopefully it's obvious why.
#/	- If calling shell doesn't support `date` then logs won't include a time stamp.
#/
#/ SPECIAL OPTION(S):
#/	-h, --help
#/		Print this help message. Function will return code of '0'. No processing will be done.
#/		(OPTIONAL)
#/
#/ OPTION(S):
#/	-c=<functionName>, --caller=<functionName>
#/		Name of calling code (function).
#/			- Note: If not given, field won't be included in log message.
#/		(OPTIONAL)
#/	-m=<logMsg>, --msg=<logMsg>
#/		Message user would like log produced of.
#/			- Note: At least one of these is required. If multiple are given,
#/				each will show up on a new line.
#/		(REQUIRED)
#/	--line-title
#/		When given, resulting log text will include a prefix and postfix.
#/			- Note: Shouldn't be combined with any other title option.
#/			- Note: If no title option is given, then no prefix, postfix,
#/				header, or footer will be included in the resulting log text.
#/		(OPTIONAL)
#/	--full-title
#/		When given, resulting log text will include a prefix, postfix, header, and footer.
#/			- Note: Shouldn't be combined with any other title option.
#/			- Note: If no title option is given, then no prefix, postfix,
#/				header, or footer will be included in the resulting log text.
#/		(OPTIONAL)
#/	-t, --trace
#/		When given, the default *trace* formatting character will be used by
#/		prefix, postfix, header, and footer (if used). Providing this option
#/		will also cause a log message with the given text to be printed to
#/		stdout *if* the shell log level ($SHELL_LOG_LEVEL) is equal to, or
#/		higher than, *trace*. This includes: trace,debug, info, warn, and error.
#/			- Note: Shouldn't be combined with any other log level option.
#/			- Note: If multiple log level options are given in a single call,
#/				the last one given will be used.
#/			- Note: When no log level option is provided, *trace* level is used.
#/		(DEFAULT)
#/	-d, --debug
#/		When given, the default *debug* formatting character will be used by
#/		prefix, postfix, header, and footer (if used). Providing this option
#/		will also cause a log message with the given text to be printed to
#/		stdout *if* the shell log level ($SHELL_LOG_LEVEL) is equal to, or
#/		higher than, *debug*. This includes: debug, info, warn, and error.
#/			- Note: Shouldn't be combined with any other log level option.
#/			- Note: If multiple log level options are given in a single call,
#/				the last one given will be used.
#/			- Note: When no log level option is provided, *trace* level is used.
#/		(OPTIONAL)
#/	-i, --info
#/		When given, the default *info* formatting character will be used by
#/		prefix, postfix, header, and footer (if used). Providing this option
#/		will also cause a log message with the given text to be printed to
#/		stdout *if* the shell log level ($SHELL_LOG_LEVEL) is equal to, or
#/		higher than, *info*. This includes: info, warn, and error.
#/			- Note: Shouldn't be combined with any other log level option.
#/			- Note: If multiple log level options are given in a single call,
#/				the last one given will be used.
#/			- Note: When no log level option is provided, *trace* level is used.
#/		(OPTIONAL)
#/	-w, --warn
#/		When given, the default *warn* formatting character will be used by
#/		prefix, postfix, header, and footer (if used). Providing this option
#/		will also cause a log message with the given text to be printed to
#/		stdout *if* the shell log level ($SHELL_LOG_LEVEL) is equal to, or
#/		higher than, *debug*. This includes: warn and error.
#/			- Note: Shouldn't be combined with any other log level option.
#/			- Note: If multiple log level options are given in a single call,
#/				the last one given will be used.
#/			- Note: When no log level option is provided, *trace* level is used.
#/		(OPTIONAL)
#/	-e, --error
#/		When given, the default *error* formatting character will be used by
#/		prefix, postfix, header, and footer (if used). Providing this option
#/		will also cause a log message with the given text to be printed to
#/		stdout *if* the shell log level($SHELL_LOG_LEVEL) is equal to, or
#/		higher than, *error*. This includes: error.
#/			- Note: Shouldn't be combined with any other log level option.
#/			- Note: If multiple log level options are given in a single call,
#/				the last one given will be used.
#/			- Note: When no log level option is provided, *trace* level is used.
#/		(OPTIONAL)
#/
#/ RETURN CODE(S):
#/	- 0: Returned when:
#/		- Help message is requested and produced.
#/		- Processing is successful
#/			- No arguments are provided.
#/	- 3: Returned when something went wrong (like what's listed bellow) but a log will still be produced:
#/		- Call to output() returned a non-zero return code:
#/			- Log will still be produced, but output() formatting won't be used.
#/	- 140: Returned when given option name is invalid.
#/	- 142: Returned when a required option is not provided.
#/
#/ EXAMPLE(S):
#/	logging --help
#/	logging -c=${FUNCNAME[0]} -m="line1\\nline2" -m="line3"
#/	logging -d -c="$USER-terminal" -m="line1" -m="line2"
#/	logging --error --line-title -m="line1" -m="line2"
#/
#/ AUTHOR(S):
#/	- Reed Clanton
#/
#/ TODO(S):
#/	- Check if I can use any sort of font formatting (ex. bold) in method description as printed by --help.
EOF
)

logging() {
	################################
	## Reset/Set Local Variable(s) ##
	################################
	# Tracks character used to insert a new line.
	local _newLine="\n"
	# Tracks given log level.
	local _lvl=$TRACE
	# Tracks name of given log level.
	local _lvlNm="TRACE"
	# Tracks name of calling function.
	local _caller=""
	# Tracks if log message should be treated as a title (and what type).
	local _title=$NO_TITLE
	# Determine if current shell supports date command.
	local _dateSupported=false
	if command -v date >/dev/null; then
		_dateSupported=true
	fi
	# Error prefix added to error output messages.
	local _logLogPrefix="ERROR logging():"
	if $_dateSupported; then
		_logLogPrefix="$($(command -v date) +'%Y/%m/%d %H:%M:%S %Z') $_logLogPrefix"
	fi
	# Used to build prefix to log message.
	local _pfix=""
	if $_dateSupported; then
		_pfix="$(date +"%Y/%m/%d %H:%M:%S %Z") "
	fi
	# Used to build final output message.
	local _msg=""
	# Tracks argument(s)/option(s) while processing.
	local _fullArg
	# Tracks output of external calls.
	local _stdOut _stdErr _rtVal

	######################
	## Process Option(s) ##
	######################
	for _fullArg in "$@"; do
		# Tracks value of current option.
		local _arg=${_fullArg#*=}

		# Determine what option user gave.
		case $_fullArg in
			-c=* | --caller=*)
				_caller=$_arg
				;;
			-t | --trace) ;;
			-d | --debug)
				_lvl=$DEBUG
				_lvlNm=DEBUG
				;;
			-i | --info)
				_lvl=$INFO
				_lvlNm="INFO "
				;;
			-w | --warn)
				_lvl=$WARN
				_lvlNm="WARN "
				;;
			-e | --error)
				_lvl=$ERROR
				_lvlNm=ERROR
				;;
			-h | --help)
				echo "$LOGGING_DOC"
				return 0
				;;
			-m=* | --msg=*)
				_msg=$_msg$_arg$_newLine
				;;
			--full-title)
				_title=$FULL_TITLE
				;;
			--line-title)
				_title=$LINE_TITLE
				;;
			*)
				echo "$_logLogPrefix $(output --pp -m="Calling function provided invalid option: '$_fullArg', see doc:")" >&2
				echo "$LOGGING_DOC" >&2
				return 140
				;;
		esac
	done

	############################
	## Error Check Argument(s) ##
	############################
	unset _stdErr _rtVal
	_stdErr=$({ verifyInputProvided "$LOGGING_DOC" --value="$_msg" >|/dev/null; } 2>&1)
	_rtVal=$?
	if [ $_rtVal -ne 0 ]; then
		echo "$_logLogPrefix $_stdErr" >&2
		return 142
	fi

	# Determine if log message should be output.
	if [ $SHELL_LOG_LEVEL -ge $_lvl ]; then
		# Build Log Prefix #
		if [ "$_caller" = "" ]; then
			_pfix="$_pfix$_lvlNm:\t"
		else
			_pfix="$_pfix$_lvlNm $_caller:\t"
		fi

		# Determine how log message should be built.
		if [ $_title -gt $NO_TITLE ]; then
			## Build Output Argument(s)/Option(s) ##
			local _outputCall="output --line-length=200"
			# Set level.
			if [ $_lvl -eq $TRACE ]; then
				_outputCall="$_outputCall --trace"
			elif [ $_lvl -eq $DEBUG ]; then
				_outputCall="$_outputCall --debug"
			elif [ $_lvl -eq $INFO ]; then
				_outputCall="$_outputCall --info"
			elif [ $_lvl -eq $WARN ]; then
				_outputCall="$_outputCall --warn"
			elif [ $_lvl -eq $ERROR ]; then
				_outputCall="$_outputCall --error"
			fi
			# Add final argument/options to output() call.
			if [ $_title -eq $FULL_TITLE ]; then
				_outputCall="$_outputCall --indent=4 --pretty"
			else
				_outputCall="$_outputCall --pre-post-fix"
			fi

			# Ensure output() was successful prior to incorporating its output into final result.
			unset _stdOut _rtVal
			_stdOut=$(eval $_outputCall --msg="${_msg%*\\n}" 2>/dev/null)
			_rtVal=$?

			# Check if output() succeeded.
			if [ $_rtVal -eq 0 ]; then
				if [ $_title -eq $FULL_TITLE ]; then
					_msg="$_pfix\n$_stdOut"
				else
					_msg="$_pfix$_stdOut"
				fi
			else
				echo "$_logLogPrefix Call to output() failed with return code '$_rtVal', log will be produced without title formatting." >&2
				printf "$_pfix$_msg"
				return 3
			fi
		else
			_msg="$_pfix$_msg"
		fi

		# Output log.
		printf "$_msg"
	fi
}
