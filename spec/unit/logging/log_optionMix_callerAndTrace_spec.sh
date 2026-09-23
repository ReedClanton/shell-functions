# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$TRACE

Describe "Log:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Option mix:" loggingLog:optionMix
			Describe "Caller and trace:" loggingLogOptionMix:callerAndTrace
				It "--caller and --trace:" loggingLogOptionMixCallerAndTrace:callerAndTrace
					When run logging -m=m --caller="functionName()" --trace
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "TRACE functionName():	m"
					The status should be success
				End
				It "-c and --trace:" loggingLogOptionMixCallerAndTrace:cAndTrace
					When run logging -m=m -c="functionName()" --trace
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "TRACE functionName():	m"
					The status should be success
				End
				It "--caller and -t:" loggingLogOptionMixCallerAndTrace:callerAndT
					When run logging -m=m --caller="functionName()" -t
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "TRACE functionName():	m"
					The status should be success
				End
				It "-c and -t:" loggingLogOptionMixCallerAndTrace:cAndT
					When run logging -m=m -c="functionName()" -t
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "TRACE functionName():	m"
					The status should be success
				End
			End
		End
	End
End

