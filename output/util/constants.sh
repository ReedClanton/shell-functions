FORMATTING_CHARACTER_DOC=$(
	cat <<"EOF"
#/	DESCRIPTION:
#/			Formatting characters are characters, or sets of characters, that are
#/		used when adding headers, footers, prefixes, and postfixes to text. For
#/		more about how this is done, see the function doc of output(). This
#/		can be done by running output() with a help option (`output -h` or
#/		`output --help`) or by printing the value of `OUTPUT_DOC`.
#/
#/	USAGE:
#/		- Set formatting characters in the `constants.sh` file associated with
#/			the function that uses them.
#/		- Some functions allow you to pass in a formatting character directly.
#/			The contents of SPECIAL CASE(S) still applies.
#/
#/	SPECIAL CASE(S):
#/		- Control characters may not be used:
#/			- \0
#/			- \a
#/			- \b
#/			- \e
#/			- \t
#/			- \n
#/			- \v
#/			- \f
#/			- \r
#/		- For a single instance of the following characters to show up, two must
#/			be provided  (`%%` rather than just `%`):
#/			- `%`
#/			- `\`
#/		- Characters that must be escaped with `\`:
#/			- `$`
#/			- `\`
#/		- For single quotes (') and double quotes (") to work, you must either:
#/			- Escape them with `\` (\').
#/			- Encapsulate them in the other one (double quotes around single "'").
#/		- The following value(s) are not supported:
#/			- Blank/empty string
#/			- Null (no value assigned)
EOF
)

####################
## Text Formatting ##
####################
# Default line length including formatting (ex. prefix & postfix).
DEFAULT_LINE_LENGTH=100
readonly DEFAULT_LINE_LENGTH
# Default number of spaces message text should be indented by.
DEFAULT_INDENT=0
readonly DEFAULT_INDENT

##################################
## Message Severity Character(s) ##
##################################
# Default formatting character.
DEFAULT_CHAR='#'
readonly DEFAULT_CHAR
# Trace formatting character.
TRACE_CHAR='.'
readonly TRACE_CHAR
# Info formatting character.
INFO_CHAR='#'
readonly INFO_CHAR
# Debug formatting character.
DEBUG_CHAR='+'
readonly DEBUG_CHAR
# Warning formatting character.
WARN_CHAR='*'
readonly WARN_CHAR
# Error formatting character.
ERROR_CHAR='!'
readonly ERROR_CHAR
