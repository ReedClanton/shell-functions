Describe "Logging:" logging
	Describe "Util:" logging:util
		Describe "Main:" loggingUtil:main
			# Makes test easier to read and maintain.
			main=$PWD/logging/util/main.sh

			Describe "LOGGING_SHELL_FUNCTION_HOME invalid:" loggingUtilMain:loggingShellFunctionHomeInvalid
				setup() { unset LOGGING_SHELL_FUNCTION_HOME; }
				BeforeRun 'setup'

				It "Not set" loggingUtilMainLoggingShellFunctionHomeInvalid:notSet
					When run source $main
					The stderr should include "LOGGING_SHELL_FUNCTION_HOME must be set to the directory containing the 'logging' function"
					The stdout should not be present
					The status should equal $ENV_VAR_BAD_VALUE_RT
				End

                setup() { LOGGING_SHELL_FUNCTION_HOME=""; }
                BeforeRun 'setup'

                It "Blank" loggingUtilMainLoggingShellFunctionHomeInvalid:blank
                    When run source $main
                    The stderr should include "LOGGING_SHELL_FUNCTION_HOME must be set to the directory containing the 'logging' function"
                    The stdout should not be present
                    The status should equal $ENV_VAR_BAD_VALUE_RT
                End

                setup() { LOGGING_SHELL_FUNCTION_HOME=" "; }
                BeforeRun 'setup'

                It "Space" loggingUtilMainLoggingShellFunctionHomeInvalid:space
                    When run source $main
                    The stderr should include "LOGGING_SHELL_FUNCTION_HOME must be set to the directory containing the 'logging' function"
                    The stdout should not be present
                    The status should equal $ENV_VAR_BAD_VALUE_RT
                End

                setup() { LOGGING_SHELL_FUNCTION_HOME="                                                                                                                             "; }
                BeforeRun 'setup'

                It "Spaces" loggingUtilMainLoggingShellFunctionHomeInvalid:spaces
                    When run source $main
                    The stderr should include "LOGGING_SHELL_FUNCTION_HOME must be set to the directory containing the 'logging' function"
                    The stdout should not be present
                    The status should equal $ENV_VAR_BAD_VALUE_RT
                End

                setup() { LOGGING_SHELL_FUNCTION_HOME="./main.sh"; }
                BeforeRun 'setup'

                It "File" loggingUtilMainLoggingShellFunctionHomeInvalid:file
                    When run source $main
                    The stderr should include "LOGGING_SHELL_FUNCTION_HOME must be set to the directory containing the 'logging' function"
                    The stdout should not be present
                    The status should equal $ENV_VAR_BAD_VALUE_RT
                End

                setup() { LOGGING_SHELL_FUNCTION_HOME="irrelevant value"; }
                BeforeRun 'setup'

                It "Irrelevant value" loggingUtilMainLoggingShellFunctionHomeInvalid:irrelevantValue
                    When run source $main
                    The stderr should include "LOGGING_SHELL_FUNCTION_HOME must be set to the directory containing the 'logging' function"
                    The stdout should not be present
                    The status should equal $ENV_VAR_BAD_VALUE_RT
                End

				# TODO: Figure out where `./` is.
                setup() { LOGGING_SHELL_FUNCTION_HOME="./"; }
                BeforeRun 'setup'

                It "Incorrect directory" loggingUtilMainLoggingShellFunctionHomeInvalid:incorrectDirectory
                    When run source $main
                    The stderr should include "Couldn't find 'constants.sh' file from LOGGING_SHELL_FUNCTION_HOME/util"
                    The stdout should not be present
                    The status should equal $CODE_NOT_ACCESSIBLE_RT
                End
            End

			Describe "LOGGING_SHELL_FUNCTION_HOME valid:" loggingUtilMain:loggingShellFunctionHomeValid
				setup() { export LOGGING_SHELL_FUNCTION_HOME="../../../../logging/"; }
				BeforeRun 'setup'

				Describe "Output not sourced:" loggingUtilMainLoggingShellFunctionHomeValid:outputNotSourced
					setup() { unset -f output; }
					BeforeRun 'setup'

					Describe "OUTPUT_SHELL_FUNCTION_HOME invalid:" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourced:outputShellFunctionHomeInvalid
						setup() { unset OUTPUT_SHELL_FUNCTION_HOME; }
						BeforeAll 'setup'

						Describe "Not set:" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalid:notSet
							setup() { unset SHELL_FUNCTIONS; }
							BeforeAll 'setup'

							Describe "SHELL_FUNCTIONS invalid:" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalidNotSet:shellFunctionsInvalid
								setup() { unset SHELL_FUNCTIONS; }
								BeforeRun 'setup'

								It "Not set" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalidNotSetShellFunctionsInvalid:notSet
									When run source $main
									The stderr should include "output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set"
									The stdout should not be present
									The status should equal $CODE_NOT_ACCESSIBLE_RT
								End

								setup() { export SHELL_FUNCTIONS=""; }
								BeforeRun 'setup'

								It "Blank" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalid:blank
									When run source $main
                                    The stderr should include "output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set"
                                    The stdout should not be present
                                    The status should equal $CODE_NOT_ACCESSIBLE_RT
								End

								setup() { export SHELL_FUNCTIONS=" "; }
								BeforeRun 'setup'

								It "Space" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalid:space
									When run source $main
                                    The stderr should include "output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set"
                                    The stdout should not be present
                                    The status should equal $CODE_NOT_ACCESSIBLE_RT
								End

								setup() { export SHELL_FUNCTIONS="                                                                                              "; }
								BeforeRun 'setup'

								It "Spaces" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalid:spaces
									When run source $main
                                    The stderr should include "output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set"
                                    The stdout should not be present
                                    The status should equal $CODE_NOT_ACCESSIBLE_RT
								End

								setup() { export SHELL_FUNCTIONS="./main.sh"; }
								BeforeRun 'setup'

								It "File" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalid:file
									When run source $main
                                    The stderr should include "output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set"
                                    The stdout should not be present
                                    The status should equal $CODE_NOT_ACCESSIBLE_RT
								End

								setup() { export SHELL_FUNCTIONS="irrelevant value"; }
								BeforeRun 'setup'

								It "Irrelevant value" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalid:irrelevantValue
									When run source $main
                                    The stderr should include "output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set"
                                    The stdout should not be present
                                    The status should equal $CODE_NOT_ACCESSIBLE_RT
								End

								# TODO: Figure out where `./` is.
								setup() { export SHELL_FUNCTIONS="./"; }
								BeforeRun 'setup'

								It "Incorrect directory" loggingUtilMainLoggingShellFunctionHomeValidOutputNotSourcedOutputShellFunctionHomeInvalid:incorrectDirectory
									When run source $main
                                    The stderr should include "output() is not sourced, can can't be found to be sourced because OUTPUT_SHELL_FUNCTION_HOME and SHELL_FUNCTIONS are both not set"
                                    The stdout should not be present
                                    The status should equal $CODE_NOT_ACCESSIBLE_RT
								End
							End
						End
					End
				End
			End
		End
	End
End

