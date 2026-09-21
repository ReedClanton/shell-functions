SHELL_FUNCTION_SETUP_DOC=$(
	cat <<"EOF"
#/	DESCRIPTION:
#/		The purpose of this file is to set up the calling shell by:
#/			- Exporting environment variable(s) used by shell function(s).
#/			- Sourcing all shell function(s).
#/			- Creating alias(es) for shell script(s).
#/
#/	USAGE: eval "$(shellFunctionSetup.sh)"
#/
#/	NOTE(S):
#/		- An executed script runs in a child process, which can't change
#/			the shell that started it. So, when executed, this file only
#/			prints shell code. The caller's `eval` then runs that code in
#/			the caller's own shell.
#/		- The printed code exports `SHELL_FUNCTIONS` (the directory this
#/			file is in, found via `$0`) and then sources this file, which
#/			runs the "Sourced: Set Up the Calling Shell" section.
#/		- File(s) sourced from that section also run in the calling shell,
#/			so they can use `.`, `export`, and `alias` directly.
#/		- Sourcing this file directly isn't supported, as POSIX sh gives a
#/			sourced file no way to learn its own path.
#/		- On error, a message is printed to stderr and nothing is printed
#/			to stdout, so the caller's `eval` does nothing. No failing
#/			return code is returned so that a failure can't cause a user's
#/			shell configuration to exit before the user knows why.
#/
#/	SPECIAL OPTION(S):
#/		None.
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
#/		eval "$(shellFunctionSetup.sh)"
#/
#/	AUTHOR(S):
#/		- Reed Clanton
#/
#/	TODO(S):
#/		- Test.
EOF
)
##################################################
## Executed: Print Code for the Caller to `eval` ##
##################################################
# This section runs in a child process, so all it can do is print code. That
# code exports `SHELL_FUNCTIONS` and sources this file with
# `_SOURCE_FUNCTIONS_SOURCING` set, which skips this section.
#
# Each exit point uses `return 0 2>/dev/null || exit 0` so that a mistaken
# `. shellFunctionSetup.sh` or `source shellFunctionSetup.sh` returns rather
# than closing the user's shell.
if [ "${_SOURCE_FUNCTIONS_SOURCING-}" != 1 ]; then
	## Determine Current Directory ##
	# `$0` names this file only when it's executed, and the name has to match
	# the file sourced by the printed code.
	case "${0##*/}" in
		shellFunctionSetup.sh) ;;
		*)
			echo 'shellFunctionSetup.sh: Execute, do not source. Usage: eval "$(/path/to/shellFunctionSetup.sh)"' >&2
			return 0 2>/dev/null || exit 0
			;;
	esac
	currDir=$(CDPATH= cd -P -- "$(dirname -- "$0")" && pwd -P) || {
		echo 'shellFunctionSetup.sh: Cannot determine the directory this file is in.' >&2
		return 0 2>/dev/null || exit 0
	}

	## Print Code ##
	# Single-quote the directory so the caller reads it back exactly. Each `'`
	# inside it becomes `'\''` (end quote, escaped quote, start quote).
	quotedCurrDir=$(printf '%s\n' "$currDir" | sed "s/'/'\\\\''/g")
	printf '%s\n' \
		"export SHELL_FUNCTIONS='$quotedCurrDir'" \
		'_SOURCE_FUNCTIONS_SOURCING=1' \
		'. "$SHELL_FUNCTIONS/shellFunctionSetup.sh"'
	return 0 2>/dev/null || exit 0
fi

#######################################
## Sourced: Set Up the Calling Shell ##
#######################################
# Everything from here on, including the file(s) sourced below, runs in the
# calling shell, so plain `export`, `.`, and `alias` affect it directly.
unset _SOURCE_FUNCTIONS_SOURCING

## Data ##
export VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/util/verifyInputProvided"
export OUTPUT_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/output"
export LOGGING_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/logging"
export SHELL_NAME_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/util/shellName"
export BACK_UP_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/backUp"

## Function(s) ##
# Include shell option checking function used by other function(s) in the same/child directories.
#   Note: If location/name of this file changes, update all other *.sh files in the same directory.
. "$VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME/verifyInputProvided.sh"
# Include output producing/formatting function(s) used by other function(s) in the same/child directories.
. "$OUTPUT_SHELL_FUNCTION_HOME/output.sh"
# Include logging function used by other function(s) in the same/child directories.
. "$LOGGING_SHELL_FUNCTION_HOME/logging.sh"
# Alias(es) are single-quoted so the variable expands, quoted, each time the
# alias is used. That keeps path(s) with spaces or quotes intact.
# Include function for returning name of current shell.
alias shellName='"$SHELL_NAME_SHELL_FUNCTION_HOME/shellName.sh"'
# Include function that backs up local home directory to "external" drive.
alias backUp='"$BACK_UP_SHELL_FUNCTION_HOME/backUp.sh"'
