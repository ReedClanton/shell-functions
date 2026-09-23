# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% ERROR:1
readonly ERROR
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$ERROR

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
			Describe "Error:" loggingLoggingOptionalOption:error
				It "-e" loggingLoggingOptionalOptionError:e
					When run logging -m=m -e
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR:	m"
					The status should be success
				End
				It "--error" loggingLoggingOptionalOptionError:error
					When run logging -m=m --error
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR:	m"
					The status should be success
				End
			End
		End
	End
End

