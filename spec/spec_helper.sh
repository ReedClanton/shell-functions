# shellcheck shell=sh

# For more information regarding ShellSpec's spec_helper file, see: https://github.com/shellspec/shellspec#spec_helper

###############################
## Pre-Test Environment Setup ##
###############################
# This callback function will be invoked once before loading specfiles.
spec_helper_precheck() {
	# Available functions: info, warn, error, abort, setenv, unsetenv
	# Available variables: VERSION, SHELL_TYPE, SHELL_VERSION

	info "If you've added environment variable(s), update 'spec/spec_helper.sh' to unset them."
	# Drop variables inherited from the caller's shell so tests only see
	# values defined within the unit tests or ShellSpec configuration.
	for name in $(env | sed -n 's/^\([A-Za-z_][A-Za-z0-9_]*\)=.*/\1/p'); do
		# When a new environment variable is added to any file that's covered
		# by tests, add it here (if not already covered).
		case $name in
			*SHELL_FUNCTION* | DEFAULT_* | *_TITLE | NONE | \
			ERROR* | WARN* | INFO* | DEBUG* | TRACE* | ALL | \
			*LOG_LEVEL* | *_DOC | *_CHAR)
				unsetenv "$name"
				;;
		esac
	done

	: minimum_version "0.28.1"
}

#######################################
## Global (Across All specfiles) Data ##
#######################################
## Constant(s) ##
# Return Value(s) #
CATCHALL_RT=1
MINOR_EXECUTION_FAILURE_RT=3
OPTION_NAME_INVALID_RT=140
OPTION_VALUE_INVALID_RT=141
OPTION_REQUIRED_NOT_PROVIDED_RT=142
ARGUMENT_REQUIRED_NOT_PROVIDED_RT=152
ENV_VAR_BAD_VALUE_RT=200
CODE_NOT_ACCESSIBLE_RT=202

## Variable(s) ##
# NoOp

## Function(s) ##
# Value Checking Function(s) #
isPositive() { [ $(($1)) -gt 0 ]; }
isNotNegative() { [ $(($1)) -ge 0 ]; }
isGreaterThan() { [ $1 -gt $2 ]; }
isInclusivelyBetween() { [ $1 -le $2 ] && [ $2 -le $3 ]; }
containsTab() {
	# Save off test output.
	testOutput="${containsTab:?}"
	if [ "${testOutput#*"	"*}" != "$testOutput" ] || [ "${testOutput#*"\t"*}" != "$testOutput" ]; then
		return 0
	fi
	return 3
}
containsVerticalTab() {
	# Save off test output.
	testOutput="${containsVerticalTab:?}"
	if [ "${testOutput#*"$(printf "\v")"*}" != "$testOutput" ] || [ "${testOutput#*"\v"*}" != "$testOutput" ]; then
		return 0
	fi
	return 3
}
containsFormFeed() {
	# Save off test output.
	testOutput="${containsFormFeed:?}"
	if [ "${testOutput#*"$(printf "\f")"*}" != "$testOutput" ] || [ "${testOutput#*"\f"*}" != "$testOutput" ]; then
		return 0
	fi
	return 3
}
containsCarriageReturn() {
	# Save off test output.
	testOutput="${containsCarriageReturn:?}"
	if [ "${testOutput#*"$(printf "\r")"*}" != "$testOutput" ] || [ "${testOutput#*"\r"*}" != "$testOutput" ]; then
		return 0
	fi
	return 3
}
containsEscapeSequence() {
	# Save off test output.
	testOutput="${containsEscapeSequence:?}"
	if [ "${testOutput#*"$(printf "\e")"*}" != "$testOutput" ] || [ "${testOutput#*"\e"*}" != "$testOutput" ]; then
		return 0
	fi
	return 3
}
# Succeeds when the running shell's ${#var} counts bytes rather than
# characters (old dash, or any shell outside a UTF-8 locale).
lacksMultibyteLength() {
	_mbTest='€'
	[ "${#_mbTest}" -ne 1 ]
}
# Shell Checking Function(s) #
# NoOp
# Mocking System Commands #
# Most code uses the 'cat' command to copy method doc to a variable, so it's mocked here.
cat() { input=""; read input; echo $input; }
# Used to mock out sourcing of util (constants, globals, helper functions, etc).
inScriptSource() { return 0; }
## Alias(es) ##
# NoOp

# This callback function will be invoked after a specfile has been loaded.
spec_helper_loaded() {
  :
}

# This callback function will be invoked after core modules has been loaded.
spec_helper_configure() {
  # Available functions: import, before_each, after_each, before_all, after_all
  : import 'support/custom_matcher'
}
