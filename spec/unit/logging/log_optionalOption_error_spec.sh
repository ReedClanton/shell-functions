# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% ERROR:1
readonly ERROR
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$ERROR

Describe "Log:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Optional option:" loggingLog:optionalOption
			Describe "Error:" loggingLogOptionalOption:error
				It "-e" loggingLogOptionalOptionError:e
					When run logging -m=m -e
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR:	m"
					The status should be success
				End
				It "--error" loggingLogOptionalOptionError:error
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

