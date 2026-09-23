# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% INFO:3
readonly INFO
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$INFO

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
			Describe "Caller and info:" loggingLogOptionMix:callerAndInfo
				It "--caller and --info:" loggingLogOptionMixCallerAndInfo:callerAndInfo
					When run logging -m=m --caller="functionName()" --info
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "INFO  functionName():	m"
					The status should be success
				End
				It "-c and --info:" loggingLogOptionMixCallerAndInfo:cAndInfo
					When run logging -m=m -c="functionName()" --info
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "INFO  functionName():	m"
					The status should be success
				End
				It "--caller and -i:" loggingLogOptionMixCallerAndInfo:callerAndI
					When run logging -m=m --caller="functionName()" -i
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "INFO  functionName():	m"
					The status should be success
				End
				It "-c and -i:" loggingLogOptionMixCallerAndDebug:cAndI
					When run logging -m=m -c="functionName()" -i
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "INFO  functionName():	m"
					The status should be success
				End
			End
		End
	End
End

