# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% DEBUG:4
readonly DEBUG
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$DEBUG

Describe "Logging:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Optional option:" loggingLogging:optionalOption
			Describe "Debug:" loggingLoggingOptionalOption:debug
				It "-d" loggingLoggingOptionalOptionDebug:d
					When run logging -m=m -d
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG:	m"
					The status should be success
				End
				It "--debug" loggingLoggingOptionalOptionDebug:debug
					When run logging -m=m --debug
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG:	m"
					The status should be success
				End
			End
		End
	End
End

