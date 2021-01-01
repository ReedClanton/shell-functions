##########
## Local ##
##########
funcName="$LOGGING_SHELL_FUNCTION_HOME/util/main.sh"

##############
## Import(s) ##
##############
## Global(s) ##
# NoOp
## Constant(s) ##
if [ -f $LOGGING_SHELL_FUNCTION_HOME/util/constants.sh ]; then
	source $LOGGING_SHELL_FUNCTION_HOME/util/constants.sh
else
	echo "ERROR $funcName(): Couldn't find constants file from LOGGING_SHELL_FUNCTION_HOME/util: '$LOGGING_SHELL_FUNCTION_HOME/util'." >&2
	exit 202
fi
## Code ##
# Import only what's used.
if [ "$(command -v output)" != output ]; then
    if [ ! -n "${OUTPUT_SHELL_FUNCTION_HOME:-}" ] || [ ! -d "$OUTPUT_SHELL_FUNCTION_HOME" ]; then
        if [ -n "${SHELL_FUNCTIONS:-}" ] && [ -d "$SHELL_FUNCTIONS" ]; then
            export OUTPUT_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/output"
        else
            echo "ERROR $funcName(): output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set." >&2
            exit 202
        fi
    fi
    source "$OUTPUT_SHELL_FUNCTION_HOME/output.sh"
fi
#if [ ! "$(command -v output)" = output ]; then
#	echo "ERROR $funcName(): output() is required and wasn't already defined." >&2
#	exit 202
#fi
# Import only what's used.
if [ "$(command -v verifyInputProvided)" != verifyInputProvided ]; then
    if [ ! -n "${VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME:-}" ] || [ ! -d "$VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME" ]; then
        if [ -n "${SHELL_FUNCTIONS:-}" ] && [ -d "$SHELL_FUNCTIONS" ]; then
            export VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME="$SHELL_FUNCTIONS/verifyInputProvided"
        else
            echo "ERROR $funcName(): verifyInputProvided() is not sourced, can can't be found to be sourced because VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set." >&2
            exit 202
        fi
    fi
	source "$VERIFY_INPUT_PROVIDED_SHELL_FUNCTION_HOME/verifyInputProvided.sh"
fi
#if [ ! "$(command -v verifyInputProvided)" = verifyInputProvided ]; then
#	echo "ERROR $funcName(): verifyInputProvided() is required and wasn't already defined." >&2
#	exit 202
#fi

######################
## Local Variable(s) ##
######################
# NoOp
