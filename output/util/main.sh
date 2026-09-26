##########
## Local ##
##########
funcName="$OUTPUT_SHELL_FUNCTION_HOME/util/main.sh"

##############
## Import(s) ##
##############
## Global(s) ##
# NoOp
## Constant(s) ##
if [ -f $OUTPUT_SHELL_FUNCTION_HOME/util/constants.sh ]; then
	source $OUTPUT_SHELL_FUNCTION_HOME/util/constants.sh
else
	echo "ERROR $funcName(): Couldn't find constants file from OUTPUT_SHELL_FUNCTION_HOME/util: '$OUTPUT_SHELL_FUNCTION_HOME/util'." >&2
	exit 202
fi
## Code ##
if [ -f $OUTPUT_SHELL_FUNCTION_HOME/util/createHeaderFooter.sh ]; then
	source $OUTPUT_SHELL_FUNCTION_HOME/util/createHeaderFooter.sh
else
	echo "ERROR $funcName(): Couldn't find createHeaderFooter() util function file from OUTPUT_SHELL_FUNCTION_HOME/util: '$OUTPUT_SHELL_FUNCTION_HOME/util'." >&2
	exit 202
fi

######################
## Local Variable(s) ##
######################
# NoOp
