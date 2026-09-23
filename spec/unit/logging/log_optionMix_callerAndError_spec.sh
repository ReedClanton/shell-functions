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

		Describe "Option mix:" loggingLog:optionMix
			Describe "Caller and error:" loggingLogOptionMix:callerAndError
				It "--caller and --error:" loggingLogOptionMixCallerAndError:callerAndError
					When run logging -m=m --caller="functionName()" --error
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR functionName():	m"
					The status should be success
				End
				It "-c and --error:" loggingLogOptionMixCallerAndError:cAndError
					When run logging -m=m -c="functionName()" --error
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR functionName():	m"
					The status should be success
				End
				It "--caller and -e:" loggingLogOptionMixCallerAndError:callerAndE
					When run logging -m=m --caller="functionName()" -e
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR functionName():	m"
					The status should be success
				End
				It "-c and -e:" loggingLogOptionMixCallerAndDebug:cAndE
					When run logging -m=m -c="functionName()" -e
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR functionName():	m"
					The status should be success
				End
			End
		End
	End
End

