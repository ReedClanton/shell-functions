# Setup required environment variable(s).
% LOG_DOC:"#/ DESCRIPTION:"

Describe "Logging:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out output().
		output() { :; }

		Describe "Required option:" loggingLogging:requiredOption
			Describe "Message:" loggingLoggingRequiredOption:message
				Describe "Input invalid:" loggingLoggingRequiredOptionMessage:inputInvalid
					It "None" loggingLoggingRequiredOptionMessageInputInvalid:none
						verifyInputProvided() {
							printf "# Missing required argument(s), see doc bellow... #\n" >&2
							echo "$LOG_DOC" >&2
							return 3
						}
						When run logging
						The stdout should not be present
						The stderr line 1 should start with "ERROR logging(): "
						The stderr should include "$LOG_DOC"
						The status should equal $OPTION_REQUIRED_NOT_PROVIDED_RT
					End
					Describe "-m:" loggingLoggingRequiredOptionMessageInputInvalid:m
						It "Missing" loggingLoggingRequiredOptionMessageInputInvalidM:missing
							When run logging -m
							The stdout should not be present
							The stderr line 1 should start with "ERROR logging(): "
							The stderr should include "$LOG_DOC"
							The status should equal $OPTION_NAME_INVALID_RT
						End
					End
					Describe "--msg:" loggingLoggingRequiredOptionMessageInputInvalid:msg
						It "Missing" loggingLoggingRequiredOptionMessageInputInvalidMsg:missing
							When run logging --msg
							The stdout should not be present
							The stderr line 1 should start with "ERROR logging(): "
							The stderr should include "$LOG_DOC"
							The status should equal $OPTION_NAME_INVALID_RT
						End
					End
				End
			End
		End
	End
End

