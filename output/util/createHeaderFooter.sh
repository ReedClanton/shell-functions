CREATE_HEADER_FOOTER_DOC=$(
	cat <<"EOF"
#/ DESCRIPTION:
#/	Returns text intended to be used as a header or footer in stdout. Upon
#/	failure, a non-zero code will be returned and output will be produced to
#/	stderr.
#/
#/ USAGE: createHeaderFooter [SPECIAL_OPTION] [OPTIONS...] --line-length=<maxMsgLength> [OPTIONS...]
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
#/	-f=<formattingCharacter>, --formatting-character=<formattingCharacter>
#/		Sets character used to create header and footer.
#/			- Note: Default value: $DEFAULT_CHAR.
#/			- Note: Some special characters may require two to be given.
#/			- Note: Some characters may require quotes (ex. `>`).
#/			- Note: Given value may not include a back slash.
#/		(OPTIONAL)
#/	-l=<maxMsgLength>, --line-length=<maxMsgLength>
#/		Max number of characters in any line of message. Used to determine how
#/		long header/footer should be.
#/			- Note: This value should only include characters in message.
#/			- Note: Value must be a positive integer.
#/		(REQUIRED)
#/	--prefix
#/		Length of header/footer changes depending on if a prefix is being used.
#/			- Note: Should *always* be given if header/footer is used with a prefix.
#/		(REQUIRED/OPTIONAL)
#/
#/ RETURN CODE(S):
#/	- 0: Returned when:
#/		- Help message is requested and produced.
#/		- Processing is successful.
#/	- 140: Returned when given option name is invalid.
#/	- 141: Returned when given value of line length is invalid.
#/	- 142: Returned when line length option isn't provided.
#/
#/ EXAMPLE(S):
#/	createHeaderFooter --help
#/	createHeaderFooter -l=10
#/	createHeaderFooter -l=96 --prefix -f='#'
#/	createHeaderFooter -l=10 -f="@@"
#/	createHeaderFooter -l=12 -f=!
#/
#/ AUTHOR(S):
#/	- Reed Clanton
#/
#/ TODO(S):
#/	- None
EOF
)

createHeaderFooter() {
	################################
	## Reset/Set Local Variable(s) ##
	################################
	# Tracks header/footer text.
	local _headerFooter=""
	# Tracks character used for formatting.
	local _fChar=$DEFAULT_CHAR
	# Tracks desired total length of header/footer.
	local _len=0
	# Tracks if prefix is being used.
	local _prefixUsed=false
	# Error prefix added to error output messages.
	local _createHeaderFooterLogPrefix="ERROR createHeaderFooter():"
	if command -v date >/dev/null; then
		_createHeaderFooterLogPrefix="$($(command -v date) +'%Y/%m/%d %H:%M:%S %Z') $_createHeaderFooterLogPrefix"
	fi
	# Used when processing provided argument(s)/option(s).
	local _fullArg

	######################
	## Process Option(s) ##
	######################
	unset _fullArg
	for _fullArg in "$@"; do
		# Tracks value of current option.
		local _arg=${_fullArg#*=}

		# Determine what option user gave.
		case $_fullArg in
			--prefix)
				_headerFooter="$_headerFooter "
				_prefixUsed=true
				_len=$(($_len + 3))
				;;
			-l=* | --line-length=*)
				# Strip space character(s) from argument.
				_arg=$(echo $_arg | tr -d '[:space:]')
				# Ensure provided line length is valid.
				case "$_arg" in
					# TODO: Figure out how to remove this hard coded line length digit limit. Then update tests to verify it.
					[1-9] | [1-9][0-9] | [1-9][0-9][0-9] | [1-9][0-9][0-9][0-9] | [1-9][0-9][0-9][0-9][0-9])
						_len=$(($_arg + $_len))
						;;
					*)
						echo "$_createHeaderFooterLogPrefix Line length must be a positive integer, was '$_arg', see doc:" >&2
						echo "$CREATE_HEADER_FOOTER_DOC" >&2
						return 141
						;;
				esac
				;;
			-f=* | --formatting-character=*)
				# Ensure a valid value was provided.
				case "$_arg" in
					*\\* | "")
						echo "$_createHeaderFooterLogPrefix Formatting character may not be blank or a special character (ex. new line, tab), was '$_arg', see doc:" >&2
						echo "$CREATE_HEADER_FOOTER_DOC" >&2
						return 141
						;;
					*)
						# Track user desired formatting character(s).
						_fChar=$_arg
						;;
				esac
				;;
			-h | --help)
				echo "$CREATE_HEADER_FOOTER_DOC"
				return 0
				;;
			*)
				echo "$_createHeaderFooterLogPrefix Caller provided invalid option: '$_fullArg', see doc:" >&2
				echo "$CREATE_HEADER_FOOTER_DOC" >&2
				return 140
				;;
		esac
	done

	#########################
	## Error Check Input(s) ##
	#########################
	if [ $_len -le 0 ]; then
		echo "$_createHeaderFooterLogPrefix Line length must be provided, see doc:" >&2
		echo "$CREATE_HEADER_FOOTER_DOC" >&2
		return 142
	fi

	#########################################
	## Post Processing of Provided Value(s) ##
	#########################################
	# Account for additional header/footer length required when a prefix is being used.
	if $_prefixUsed; then
		_len=$(($(($((${#_fChar} - 1)) * 2)) + $_len))
	fi

	###########################
	## Generate Header/Footer ##
	###########################
	while [ ${#_headerFooter} -lt $_len ]; do
		# When near the end, given formatting character(s) may need to be split up.
		if [ $((${#_headerFooter} + ${#_fChar})) -gt $_len ]; then
			# Note: POSIX doesn't support slicing, so a loop must be used.
			# Loop consumes variable.
			local _tmp=$_fChar
			# Shortened formatting character.
			# Resulting shortened formatting character(s).
			local _shortFChar=""
			local _i=0
			while [ -n "$_tmp" ]; do
				# Check if another character can fit in the line.
				if [ "$(($_len - ${#_headerFooter}))" = "$_i" ]; then
					break
				fi
				_i=$(($_i + 1))

				# All but the first character of the string.
				local _rest=${_tmp#?}
				# Append next character from formatting string to header/footer.
				_shortFChar=$_shortFChar${_tmp%"$_rest"}
				# Track remaining formatting string character(s).
				_tmp=$_rest
			done

			_headerFooter=$_headerFooter$_shortFChar
		else
			_headerFooter=$_headerFooter$_fChar
		fi
	done

	# Add new line and return.
	echo "$_headerFooter"
}
