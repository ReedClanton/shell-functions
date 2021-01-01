VERIFY_INPUT_PROVIDED_DOC=$(
	cat <<"EOF"
#/ DESCRIPTION:
#/	When given a message and any number of value(s) (see '-v'), each value will
#/	be checked to ensure it's been set (it's not empty). If it has not been
#/	set, a non-zero code will be returned. If all given value(s) were set, a
#/	return code of '0' will be returned. Intended to be used by shell functions
#/	to check that required arguments/options were provided.
#/
#/ USAGE: verifyInputProvided [SPECIAL_OPTION] "[ARGUMENTS]" --value="value"...
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
#/ ARGUMENT(S):
#/	"<callingFuncDoc>"
#/		Message (calling function doc) that should be produced if any of the
#/		provided value(s) have not been set.
#/			- Note: This value *must* be surrounded with '"'
#/				(i.e. "$VERIFY_INPUT_PROVIDED_DOC").
#/			- Note: This *must* be the first argument provided (other than special options).
#/		(REQUIRED)
#/
#/ OPTION(S):
#/	-v=<val>, --value=<val>
#/		'<val>' will be checked to ensure it's been set to something that's not blank.
#/			- Note: Some special cases, such as values that contain spaces, may
#/				require quotes, '"' or "'", around the *entire option*
#/				(i.e. "-v=<specialCaseVal>").
#/			- Note: Some *other* special cases, such as values that contain
#/				spaces, may require the *value* be surrounded with escaped
#/				quotes, '"' or "'", before and after the value
#/				(i.e. -v=\"value with spaces\").
#/			- Note: Some special cases may require a combination of the above.
#/				Specifically surrounding the *value* with escaped quotes, '"' or
#/				"'", *and* the entire *option* (i.e. "-v=\"<specialCaseVal>\"").
#/		(REQUIRED)
#/
#/ RETURN CODE(S):
#/	- 0: Returned when:
#/		- Help message is requested and produced.
#/		- Processing is successful.
#/	- 3: Returned when one or more of the options provided for error checking are invalid.
#/	- 140: Returned when given option name is invalid.
#/	- 142: Returned when required option isn't provided, for example:
#/		- -v/--value not provided.
#/	- 152: Returned when required argument (doc) isn't provided.
#/
#/ EXAMPLE(S):
#/	verifyInputProvided --help
#/	verifyInputProvided "$SOME_FUNCTION_DOC" -v=<value1> "-v=<valueN>"
#/
#/ AUTHOR(S):
#/	- Reed Clanton
#/
#/ TODO(S):
#/	- None.
EOF
)

verifyInputProvided() {
	################################
    ## Reset/Set Local Variable(s) ##
    ################################
    # Error prefix added to error logs.
    _verifyInputProvidedLogPrefix="ERROR verifyInputProvided():"
    if command -v date >/dev/null; then
        _verifyInputProvidedLogPrefix="$($(command -v date) +'%Y/%m/%d %H:%M:%S %Z') $_verifyInputProvidedLogPrefix"
    fi
	# Used when processing the argument(s)/option(s) pass in.
	local _fullArg
	# Tracks number of input(s) provided.
	local _inputCount=0

	######################################
	## Processing Special Case Option(s) ##
	######################################
	unset _fullArg
	for _fullArg in "$@"; do
		case $_fullArg in
			-h | --help)
				echo "$VERIFY_INPUT_PROVIDED_DOC"
				return 0
				;;
		esac
	done

	##################################
	## Process Argument(s)/Option(s) ##
	##################################
	unset _fullArg
	for _fullArg in "$@"; do
		if [ $_inputCount -eq 0 ]; then
			local _docString="$_fullArg"
		else
			# Tracks value of current option.
			local arg=${_fullArg#*=}

			# Determine what type of value user gave.
			case $_fullArg in
				-v=* | --value=*)
					# Ensure all option(s) given have been set to something.
					if [ "$arg" = "" ]; then
						echo "$_verifyInputProvidedLogPrefix Missing required value, see doc:" >&2
						echo "'$_docString'" >&2
						return 3
					fi
					;;
				*)
					echo "$_verifyInputProvidedLogPrefix Invalid option: '$_fullArg', see doc:" >&2
					echo "$VERIFY_INPUT_PROVIDED_DOC" >&2
					return 140
					;;
			esac
		fi
		_inputCount=$(($_inputCount + 1))
	done

	# Ensure at least one value was passed in.
	if [ $_inputCount -lt 1 ]; then
		echo "$_verifyInputProvidedLogPrefix Required argument wasn't provided, see doc:" >&2
		echo "$VERIFY_INPUT_PROVIDED_DOC" >&2
		return 152
	elif [ $_inputCount -lt 2 ]; then
		echo "$_verifyInputProvidedLogPrefix Required option wasn't provided, see doc:" >&2
		echo "$VERIFY_INPUT_PROVIDED_DOC" >&2
		return 142
	fi
	return 0
}
