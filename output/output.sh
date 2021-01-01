# Needed so unit tests can mock out sourced file(s).
if ! command -v inScriptSource >/dev/null; then
	inScriptSource() { . "$@"; }
fi

##############
## Import(s) ##
##############
funcName="output"
if [ -f $OUTPUT_SHELL_FUNCTION_HOME/util/main.sh ]; then
	inScriptSource $OUTPUT_SHELL_FUNCTION_HOME/util/main.sh
else
	echo "ERROR $funcName(): Couldn't find 'main.sh' file from OUTPUT_SHELL_FUNCTION_HOME/util: '$OUTPUT_SHELL_FUNCTION_HOME/util'." >&2
	exit 202
fi

################
## Function(s) ##
################
OUTPUT_DOC=$(
	cat <<"EOF"
#/ DESCRIPTION:
#/	Used to produce formatted output.
#/		- Example 1:
#/			 ############
#/			## --pretty ##
#/			 ############
#/		- Example 2:
#/			## --pre-post-fix ##
#/		- Example 3:
#/			 #############
#/			--header-footer
#/			 #############
#/
#/ USAGE: output [SPECIAL_OPTION] [OPTIONS...] -m="message text"... [OPTIONS...]
#/
#/ NOTE(S):
#/	- Different shells render special characters, like tab and new line,
#/		differently. Thus if this doc contains any special characters that have
#/		two backslashes, know that only one is intended.
#/	- Method may not use the logging() function because this is used by that method.
#/
#/ SPECIAL OPTION(S):
#/	-h, --help
#/		Print this help message. Function will return code of '0'. No processing will be done.
#/		(OPTIONAL)
#/
#/ OPTION(S):
#/	-m=<msg>, --msg=<msg>
#/		Message user would like formatted output produced of.
#/			- Note: If multiple are given, each will show up on a new line.
#/			- Note: If one line exceeds the set max line length, it will be
#/				broken up. The rest of the line will start with the same
#/				indentation.
#/			- Note: '\\t' and '\\n' will be handled as the 'printf' function would.
#/			- Note: At least one instance of this option must be provided.
#/			- Note: All provided values may be blank if desired.
#/		(REQUIRED)
#/	-p, --pretty
#/		When given, message produced will include a header, footer, prefix, and postfix.
#/			- Note: Does the same as giving: --header-footer, and --pre-post-fix.
#/			- Note: When given: --p, --header-footer, and --pre-post-fix become
#/				redundant.
#/		(OPTIONAL)
#/	--pp, --pre-post-fix
#/		When given, message produced will include a prefix and postfix.
#/			- Note: Redundant if -p.
#/		(OPTIONAL)
#/	-l=<maxLineLength>, --line-length=<maxLineLength>
#/		Sets max number of characters that may be included on a single line.
#/			- Note: Line length includes prefix and postfix if included.
#/			- Note: Default value: 100.
#/		(OPTIONAL)
#/	--header-footer
#/		When given, message produced will include a header and footer.
#/			- Note: Redundant if -p given.
#/		(OPTIONAL)
#/	-f=<formattingCharacter>, --formatting-character=<formattingCharacter>
#/		Sets character used by header, footer, prefix, and postfix.
#/			- Note: Default value: $DEFAULT_CHAR.
#/			- Note: Some special characters may require two to be given (ex. -f="%%").
#/			- Note: Some *other* special characters may not work at all (ex. back slash).
#/		(OPTIONAL)
#/	--indent=<numSpacesToIndent>
#/		Sets number of spaces formatted message, including
#/		prefix/postfix/header/footer if used, should be indented.
#/			- Note: Default value: $DEFAULT_INDENT.
#/			- Note: Must be a positive integer.
#/		(OPTIONAL)
#/	-t, --trace
#/		When given, *trace* formatting character ($TRACE_CHAR) is used as formatting character.
#/			- Note: If the formatting character isn't set, and no level is
#/				provided (ex. debug, error), then the default formatting
#/				character ($DEFAULT_CHAR) is used.
#/		(OPTIONAL)
#/	-d, --debug
#/		When given, *debug* formatting character ($DEBUG_CHAR) is used as
#/		formatting character.
#/			- Note: If the formatting character isn't set, and no level is
#/				provided (ex. debug, error), then the default formatting
#/				character ($DEFAULT_CHAR) is used.
#/		(OPTIONAL)
#/	-i, --info
#/		When given, *info* formatting character ($INFO_CHAR) is used as
#/		formatting character.
#/			- Note: If the formatting character isn't set, and no level is
#/				provided (ex. debug, error), then the default formatting
#/				character ($DEFAULT_CHAR) is used.
#/		(OPTIONAL)
#/	-w, --warn
#/		When given, *warn* formatting character ($WARN_CHAR) is used as
#/		formatting character.
#/			- Note: If the formatting character isn't set, and no level is
#/				provided (ex. debug, error), then the default formatting
#/				character ($DEFAULT_CHAR) is used.
#/		(OPTIONAL)
#/	-e, --error
#/		When given, *error* formatting character ($ERROR_CHAR) is used as
#/		formatting character.
#/			- Note: If the formatting character isn't set, and no level is
#/				provided (ex. debug, error), then the default formatting
#/				character ($DEFAULT_CHAR) is used.
#/		(OPTIONAL)
#/
#/ RETURN CODE(S):
#/	- 0: Returned when:
#/		- Help message is requested and produced.
#/		- Processing is successful.
#/	- 3: Returned when header/footer fails to be generated.
#/	- 140: Returned when given option name is invalid.
#/	- 141: Returned when:
#/		- Provided indent value is negative.
#/		- Provided max line length value is too small:
#/			- Line length - prefix - postfix > 0.
#/	- 142: Returned when the message text option is not provided.
#/	- 200: Returned when an environment variable has been set to an invalid valid, for example:
#/		- Max line length insufficient (not enough room on line for message text) and:
#/			- `$DEFAULT_INDENT` is set to something greater than `0` or,
#/			- '$DEFAULT_LINE_LENGTH` is smaller than provided max line length.
#/
#/ EXAMPLE(S):
#/	output --help
#/	output -m="line 1" -m="line 2" -m="line 3\\nline 4" -m="line 5"
#/	output -m="line 1" -m="longLine 2" -l=6
#/	output -m="line 1" -m="longLine 2" -l=10 -p
#/	output -m="line 1" -m="longLine 2" -l=10 --pre-post-fix --header-footer
#/	output -m="line 1" --pretty --error
#/	output -m="line 1" -p -w
#/	output -m="line 1" -p -f="^"
#/	output -m="line 1" -p --formatting-character="&&"
#/
#/ AUTHOR(S):
#/	- Reed Clanton
#/
#/ TODO(S):
#/	- Implement: Dynamically determine, based on last character of line being
#/		split up, if a '-' is needed.
#/	- Implement: Ability to append end of line that was too long to fit on one
#/		row to the start of the next line.
#/	- Implement: Support for '%' as a formatting character.
EOF
)

output() {
	################################
	## Reset/Set Local Variable(s) ##
	################################
	# Tracks character used to insert a new line.
	local _newLine="\n"
	# Tracks delimiter character used to split up provided message text.
	local _delm=$_newLine
	# Tracks character used for formatting.
	local _fChar=$DEFAULT_CHAR
	# Determines if message header and footer should be used.
	local _headerFooter=false
	# If header/footer is being used, it's stored in here once created.
	local _headerFooterTxt=""
	# Determines if message prefix and postfix should be used.
	local _prePostFix=false
	# Tracks message indent.
	local _indent=$DEFAULT_INDENT
	# Tracks max allowed line length.
	local _maxAlwLineLen=$DEFAULT_LINE_LENGTH
	# Tracks length of longest given line.
	local _maxGvnLineLen=0
	# Used to track max length any line of message is allowed to be based on:
	#	- Max allowed line length.
	#	- Minus prefix length (if used).
	#	- Minus postfix length (if used).
	local _maxAlwMsgLen=0
	# Used to track each line of message.
	local _msg=""
	# Contains final (formatted) message text.
	local _rtOutput=""
	# Error prefix added to error output messages.
	local _outputLogPrefix="ERROR output():"
	if command -v date >/dev/null; then
		_outputLogPrefix="$($(command -v date) +'%Y/%m/%d %H:%M:%S %Z') $_outputLogPrefix"
	fi
	# Tracks if caller provided a message option so correct return value may be provided.
	local _msgGiven=false
	# Used when processing provided argument(s)/option(s).
	local _fullArg
	# Tracks output of external calls.
    local _stdOut _stdErr _rtVal _cmd

	######################
	## Process Option(s) ##
	######################
	unset _fullArg
	for _fullArg in "$@"; do
		# Tracks value of current option.
		local _arg=${_fullArg#*=}

		# Determine what option user gave.
		case $_fullArg in
			-h | --help)
				echo "$OUTPUT_DOC"
				return 0
				;;
			-f=* | --formatting-character=*)
				# Ensure a valid value was provided.
				case "$_arg" in
					*\\* | "" | %)
						echo "$_outputLogPrefix Formatting character may not be blank, a special character (ex. new line, tab), or '%', was '$_arg'. See doc:" >&2
						echo "$OUTPUT_DOC" >&2
						return 141
						;;
					*)
						_fChar=$_arg
						;;
				esac
				;;
			-t | --trace)
				_fChar=$TRACE_CHAR
				;;
			-d | --debug)
				_fChar=$DEBUG_CHAR
				;;
			-i | --info)
				_fChar=$INFO_CHAR
				;;
			-w | --warn)
				_fChar=$WARN_CHAR
				;;
			-e | --error)
				_fChar=$ERROR_CHAR
				;;
			--header-footer)
				_headerFooter=true
				;;
			--indent=*)
				# Strip space character(s) from argument.
				_arg=$(echo $_arg | tr -d '[:space:]')
				# Ensure provided indent is valid.
				case "$_arg" in
					# TODO: Figure out how to remove this hard coded line
					# length digit limit. Then update tests to verify it.
					[0-9] | [0-9][0-9] | [0-9][0-9][0-9] | [0-9][0-9][0-9][0-9] | [0-9][0-9][0-9][0-9][0-9])
						_indent=$_arg
						;;
					*)
						echo "$_outputLogPrefix Indent must be a non-negative integer, was '$_arg', see doc:" >&2
						echo "$OUTPUT_DOC" >&2
						return 141
						;;
				esac
				;;
			-l=* | --line-length=*)
				# Strip space character(s) from argument.
				_arg=$(echo $_arg | tr -d '[:space:]')
				# Ensure provided value is valid.
				case "$_arg" in
					# TODO: Figure out how to remove this hard coded line
					# length digit limit. Then update tests to verify it.
					[1-9] | [0-9][0-9] | [1-9][0-9][0-9] | [1-9][0-9][0-9][0-9] | [1-9][0-9][0-9][0-9][0-9])
						_maxAlwLineLen=$_arg
						;;
					*)
						echo "$_outputLogPrefix Line length must be a positive integer, was '$_arg', see doc:" >&2
						echo "$OUTPUT_DOC" >&2
						return 141
						;;
				esac
				;;
			-m=* | --msg=*)
				# Track the fact that the message option was provided so if no text
				# was, then the correct error message and return value will be provided.
				_msgGiven=true
				# Every message option provided results in at least one line of output. Then save off provided message.
				_arg=$_arg$_delm
				_msg=$_msg$_arg
				# Update longest provided line (if needed).
				while [ "$_arg" ]; do
					# Split out current loop's line from the rest.
					line=${_arg%%"$_delm"*}
					_arg=${_arg#*"$_delm"}
					# Track length of longest given line.
					if [ ${#line} -gt $_maxGvnLineLen ]; then
						_maxGvnLineLen=${#line}
					fi
				done
				;;
			-p | --pretty)
				# Use all formatting.
				_headerFooter=true
				_prePostFix=true
				;;
			--pp | --pre-post-fix)
				# Use post/pre fix formatting.
				_prePostFix=true
				;;
			*)
				echo "$_outputLogPrefix Calling function provided invalid option: '$_fullArg', see doc:" >&2
				echo "$OUTPUT_DOC" >&2
				return 140
				;;
		esac
	done

	############################
	## Error Check Argument(s) ##
	############################
	# Used to track max number of message character(s) that be exist on each line (accounts for pre/post fix).
	_maxAlwMsgLen=$_maxAlwLineLen

	## Ensure Message Text Option was Provided ##
	if $_msgGiven; then
		# Remove indent value from max message character(s) per line.
		if [ $_indent -gt 0 ]; then
			_maxAlwMsgLen=$(($_maxAlwMsgLen - $_indent))
		fi

		# Remove prefix & postfix length from max message character(s) per line.
		if $_prePostFix; then
			_maxAlwMsgLen=$(($_maxAlwMsgLen - $(($((${#_fChar} + 1)) * 2))))
		fi

		## Verify Max Message Character(s) Per Line is Valid ##
		if [ $_maxAlwMsgLen -lt 1 ]; then
			# Build helpful error message(s).
			errMsg="$_outputLogPrefix Max line length ($_maxAlwLineLen) is too short to contain any characters. Try:"
			echo $errMsg >&2

			# Max line length related messages.
			if [ $_maxAlwLineLen -ne $DEFAULT_LINE_LENGTH ] && [ $DEFAULT_LINE_LENGTH -lt $_maxAlwLineLen ]; then
				errMsg="$_outputLogPrefix - Using the default line length value (DEFAULT_LINE_LENGTH: '$DEFAULT_LINE_LENGTH') by not passing in '--line-length' or '-l'"
				echo $errMsg >&2
			elif [ $_maxAlwLineLen -eq $DEFAULT_LINE_LENGTH ]; then
				errMsg="$_outputLogPrefix - Increase default line length (DEFAULT_LINE_LENGTH) value up from '$DEFAULT_LINE_LENGTH'"
				echo $errMsg >&2
			fi
			errMsg="$_outputLogPrefix - Pass in larger max line length value (ex. '--line-length=$(($_maxAlwLineLen + 50))')"
			echo $errMsg >&2

			# Indent related messages.
			if [ $_indent -ne $DEFAULT_INDENT ] && [ $DEFAULT_INDENT -lt $_indent ]; then
				errMsg="$_outputLogPrefix - Using the default indent value (DEFAULT_INDENT: '$DEFAULT_INDENT') by not passing in '--indent'"
				echo $errMsg >&2
			elif [ $_indent -eq $DEFAULT_INDENT ]; then
				errMsg="$_outputLogPrefix - Decrease default indent value (DEFAULT_INDENT: '$DEFAULT_INDENT')"
				echo $errMsg >&2
			fi
			if [ $_indent -gt 0 ]; then
				errMsg="$_outputLogPrefix - Pass in smaller indent value (ex. '--indent=0')"
				echo $errMsg >&2
			fi

			# Formatting related messages.
			if $_prePostFix; then
				errMsg="$_outputLogPrefix - Not using a pre-fix and post-fix by not passing in: '-p', '--pretty', '--pp', or '--pre-post-fix'"
				echo $errMsg >&2
				if [ "$_fChar" != "$DEFAULT_CHAR" ] && [ ${#_fChar} -gt ${#DEFAULT_CHAR} ]; then
					errMsg="$_outputLogPrefix - Using the default formatting character (DEFAULT_CHAR: '$DEFAULT_CHAR') by not passing in any formatting character"
					echo $errMsg >&2
				elif [ "$_fChar" = "$DEFAULT_CHAR" ] && [ ${#DEFAULT_CHAR} -gt 1 ]; then
					errMsg="$_outputLogPrefix - Decrease length of default formatting character (DEFAULT_CHAR: '$DEFAULT_CHAR')"
					echo $errMsg >&2
				fi
				if [ ${#_fChar} -gt 1 ]; then
					errMsg="$_outputLogPrefix - Using a shorter formatting character (ex. '--formatting-character=#')"
					echo $errMsg >&2
				fi
			fi

			# Produce doc.
			echo "$OUTPUT_DOC" >&2

			# Determine most correct return code, and exit.
			if [ $_maxAlwMsgLen -lt 0 ]; then
				_maxAlwMsgLen=0
			fi
			# Indent must be greater than zero for the return code to be determined by it.
			if [ $_indent -ge $_maxAlwMsgLen ] && [ $_indent -gt 0 ]; then
				if [ $_indent -gt $DEFAULT_INDENT ]; then
					return 141
				else
					return 200
				fi
			# Max line length will determine return code.
			elif [ $_maxAlwLineLen -lt $DEFAULT_LINE_LENGTH ]; then
				return 141
			else
				return 200
			fi
		fi
	else
		echo "$_outputLogPrefix Message option must be provided, see doc:" >&2
		echo "$OUTPUT_DOC" >&2
		return 142
	fi

	#########################
	## Format Given Message ##
	#########################
	## Generate indentation text ##
	_indentTxt=$(printf %${_indent}s | tr " " " ")

	## Split Long Lines ##
	# Determine if any lines given are long enough to require splitting.
	if [ $_maxGvnLineLen -gt $_maxAlwMsgLen ]; then
		# Temporarily tracks line(s) of message as it's broken up.
		local _tmpMsg=""
		# Break up lines of provided message if they're too long.
		while [ "$_msg" ]; do
			# Split out current loop's line from the rest.
			local _line=${_msg%%"$_delm"*}
			_msg=${_msg#*"$_delm"}
			# Break line up if needed.
			while [ ${#_line} -gt $_maxAlwMsgLen ]; do
				# Append portion of current line that's within line length limit.
				_tmpMsg=$_tmpMsg$(echo "$_line" | cut -c 1-$_maxAlwMsgLen)$_delm
				# Remove portion of line that's already been appended.
				_line=$(echo "$_line" | cut -c $(($_maxAlwMsgLen + 1))-${#_line})
			done
			# Append remaining portion of line.
			if [ ${#_line} -gt 0 ]; then
				_tmpMsg=$_tmpMsg$_line$_newLine
			fi
		done
		# Copy broken up message back.
		_msg=$_tmpMsg

		# Update longest given line.
		_maxGvnLineLen=$_maxAlwMsgLen
	fi

	## Generate Header/Footer ##
	# Determine if header/footer is needed.
	if $_headerFooter; then
		# Call function that creates header/footer.
		unset _cmd
		if $_prePostFix; then
			_cmd="createHeaderFooter --prefix -l=$_maxGvnLineLen -f='$_fChar'"
		else
			_cmd="createHeaderFooter -l=$_maxGvnLineLen -f='$_fChar'"
		fi
		unset _stdOut _stdErr _rtVal
		_stdOut=$(eval "$_cmd" 2>|.stdErr.out)
		_rtVal=$?
		# Save off stdErr and remove temporary file used to store it.
		_stdErr=$(cat .stdErr.out)
		rm ./.stdErr.out

		# Ensure header/footer was generated successfully.
		if [ $_rtVal -eq 0 ]; then
			# Save off header/footer.
			if [ ! -z "$_indentTxt" ]; then
				_headerFooterTxt="$_indentTxt$_stdOut$_newLine"
			else
				_headerFooterTxt="$_stdOut$_newLine"
			fi
		else
			echo "$_outputLogPrefix createHeaderFooter() failed to create header/footer text. stdErr bellow:" >&2
			echo "$_stdErr" >&2
			return 3
		fi
	fi

	##########################
	## Produce Final Message ##
	##########################
	## Header ##
	if $_headerFooter; then
		_rtOutput=$_rtOutput$_headerFooterTxt
	fi

	## Add Message, Prefix, & Postfix ##
	while [ "$_msg" ]; do
		# Split out current loop's line from the rest.
		local _line=${_msg%%"$_delm"*}
		_msg=${_msg#*"$_delm"}

		# Determine if prefix is needed.
		_rtOutput=$_rtOutput$_indentTxt
		if $_prePostFix; then
			_rtOutput="$_rtOutput$_fChar "
		fi

		# Add current line of message.
		_rtOutput=$_rtOutput$_line

		# Determine if postfix is needed.
		if $_prePostFix; then
			# Add lines after message so postfix characters line up.
			local _j=${#_line}
			while [ $_j -lt $_maxGvnLineLen ]; do
				_j=$((_j + 1))
				_rtOutput="$_rtOutput "
			done
			# Add postfix character.
			_rtOutput="$_rtOutput $_fChar$_newLine"
		else
			_rtOutput=$_rtOutput$_newLine
		fi
	done

	## Footer ##
	if $_headerFooter; then
		_rtOutput=$_rtOutput$_headerFooterTxt
	fi

	## Write Final Message ##
	printf "$_rtOutput"
}
