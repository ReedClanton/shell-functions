SOURCE_FUNCTIONS_DOC=$(
	cat <<"EOF"
#/	DESCRIPTION:
#/		The purpose of this file is to:
#/			- Determine the location of this file.
#/			- Use the current location of this file to source all
#/				shell function(s).
#/
#/	USAGE: sourceFunctions.sh [SPECIAL_OPTION]
#/
#/	NOTE(S):
#/		- POSIX sh has no way for a *sourced* file to learn its own path.
#/			As a result, this attempts to use the `SHELL_FUNCTIONS`
#/			environment variable.
#/		- If the `SHELL_FUNCTIONS` environment variable isn't set,
#/			then an attempt is made to determine the location of this
#/			file using shell extensions built into *some* shells.
#/		- If the current shell doesn't support extensions for determining
#/			the location of a sourced file, then an attempt is made to
#/			determine the location from `$0` (the first argument passed
#/			into this script). This works when this file is called rather
#/			than sourced.
#/		- If none of the above work, then an error message is printed. No
#/			failing return code is returned because if this file is
#/			sourced by a user's shell configuration and fails, returning
#/			an error code could cause the shell to exit before the user
#/			knows why.
#/
#/	SPECIAL OPTION(S):
#/		-h, --help
#/			Print this help message. Function will return code of '0' and
#/			no processing will be done.
#/			(OPTIONAL)
#/
#/	ARGUMENT(S):
#/		None.
#/
#/	OPTION(S):
#/		None.
#/
#/	RETURN CODE(S):
#/		- 0: Always returned.
#/
#/	EXAMPLE(S):
#/		sourceFunctions.sh
#/		sourceFunctions.sh -h
#/		sourceFunctions.sh --help
#/
#/	AUTHOR(S):
#/		- Reed Clanton
#/
#/	TODO(S):
#/		- Test.
EOF
)
################################
## Reset/Set Local Variable(s) ##
################################
# NoOp.

######################
## Process Option(s) ##
######################
for fullArg in "$@"; do
	# Determine what option user gave.
	case "$fullArg" in
		-h|--help)
			echo "$SOURCE_FUNCTIONS_DOC"
			return 0 2>/dev/null || exit 0
			;;
		*)
			echo "fullArg: '$fullArg'"
			return 0 2>/dev/null | exit 0
			;;
	esac
done

################################
## Determine Current Directory ##
################################
if [ ! -n "${SHELL_FUNCTIONS:-}" ] || [ ! -d "$SHELL_FUNCTIONS" ]; then
	# Tracks directory current file is in while tracking it down.
	local _currDir
    # Shell-specific syntax is wrapped in `eval` so that shells which don't
    # understand it never have to parse it.
    if [ -n "${BASH_SOURCE+x}" ]; then
		# bash, OSH
        eval '_currDir=${BASH_SOURCE[0]}'
    elif [ -n "${ZSH_VERSION-}" ]; then
		# zsh
        eval '_currDir=${(%):-%x}'
    else
        case ${KSH_VERSION-} in
			# ksh93
            'Version '*)
				eval '_currDir=${.sh.file}'
				;;
			# Other shells, only works when executed, not sourced.
            *)
				_currDir="$0"
				;;
        esac
    fi

    # When this file is sourced by a shell with no "current file" feature,
    # $0 still names the parent shell or script. Fail loudly, not silently.
    case ${_currDir##*/} in
        sourceFunctions.sh)
			;;
        *)
            echo 'sourceFunctions.sh: Cannot locate itself when sourced by this shell; set SHELL_FUNCTIONS first.' >&2
			return 0 2>/dev/null || exit 0
            ;;
    esac

    export SHELL_FUNCTIONS=$(CDPATH= cd -P -- "$(dirname -- "$_currDir")" && pwd -P)
fi

############################
## Global Function(s)/Data ##
############################
## Data ##
export VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/util/verifyInputProvided"
export OUTPUT_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/output"
export LOGGING_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/logging"
export SHELL_NAME_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/util/shellName"
export BACK_UP_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/backUp"

## Function(s) ##
# Include shell option checking function used by other function(s) in the same/child directories.
#   Note: If location/name of this file changes, update all other *.sh files in the same directory.
source $VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME/verifyInputProvided.sh
# Include output producing/formatting function(s) used by other function(s) in the same/child directories.
source $OUTPUT_SHELL_FUNCTION_HOME/output.sh
# Include logging function used by other function(s) in the same/child directories.
source $LOGGING_SHELL_FUNCTION_HOME/logging.sh
# Include function for returning name of current shell.
alias shellName=$SHELL_NAME_SHELL_FUNCTION_HOME/shellName.sh
# Include function that backs up local home directory to "external" drive.
alias backUp=$BACK_UP_SHELL_FUNCTION_HOME/backUp.sh
