# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% DEBUG:4
readonly DEBUG
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$DEBUG

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
			Describe "Caller and debug:" loggingLogOptionMix:callerAndDebug
				It "--caller and --debug:" loggingLogOptionMixCallerAndDebug:callerAndDebug
					When run logging -m=m --caller="functionName()" --debug
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG functionName():	m"
					The status should be success
				End
				It "-c and --debug:" loggingLogOptionMixCallerAndDebug:cAndDebug
					When run logging -m=m -c="functionName()" --debug
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG functionName():	m"
					The status should be success
				End
				It "--caller and -d:" loggingLogOptionMixCallerAndDebug:callerAndD
					When run logging -m=m --caller="functionName()" -d
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG functionName():	m"
					The status should be success
				End
				It "-c and -d:" loggingLogOptionMixCallerAndDebug:cAndD
					When run logging -m=m -c="functionName()" -d
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG functionName():	m"
					The status should be success
				End
			End
		End
	End
End

