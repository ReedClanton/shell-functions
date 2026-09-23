# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$TRACE

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
			Describe "Trace:" loggingLoggingOptionalOption:trace
				It "None" loggingLoggingOptionalOptionTrace:none
					When run logging -m=m
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "TRACE:	m"
					The status should be success
				End
				It "-t" loggingLoggingOptionalOptionTrace:t
					When run logging -m=m -t
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "TRACE:	m"
					The status should be success
				End
				It "--trace" loggingLoggingOptionalOptionTrace:trace
					When run logging -m=m --trace
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "TRACE:	m"
					The status should be success
				End
			End
		End
	End
End

