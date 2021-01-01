##########
## Local ##
##########
funcName="$BACK_UP_SHELL_FUNCTION_HOME/util/main.sh"

##############
## Import(s) ##
##############
## Global(s) ##
# NoOp
## Constant(s) ##
if [ -f $BACK_UP_SHELL_FUNCTION_HOME/util/constants.sh ]; then
	source $BACK_UP_SHELL_FUNCTION_HOME/util/constants.sh
else
	echo "ERROR $funcName(): Couldn't find constants file from BACK_UP_SHELL_FUNCTION_HOME/util: '$BACK_UP_SHELL_FUNCTION_HOME/util'." >&2
	exit 202
fi
## Code ##
# Import only what's used.
if [ "$(command -v logging)" != logging ]; then
	if [ ! -n "${LOGGING_SHELL_FUNCTION_HOME:-}" ] || [ ! -d "$LOGGING_SHELL_FUNCTION_HOME" ]; then
		if [ -n "${SHELL_FUNCTIONS:-}" ] && [ -d "$SHELL_FUNCTIONS" ]; then
			export LOGGING_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/logging"
		else
			echo "ERROR $funcName(): logging() is not sourced, can can't be found to be sourced because LOGGING_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set." >&2
			exit 202
		fi
	fi
	source "$LOGGING_SHELL_FUNCTION_HOME/logging.sh"
fi
#if [ "$(command -v logging)" != logging ]; then
#	echo "ERROR $funcName(): logging() is required by backUp() and wasn't already defined." >&2
#	exit 202
#fi

######################
## Local Variable(s) ##
######################
# NoOp
