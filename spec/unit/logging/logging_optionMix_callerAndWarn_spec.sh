# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% WARN:2
readonly WARN
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$WARN

Describe "Logging:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Option mix:" loggingLogging:optionMix
			Describe "Caller and warn:" loggingLoggingOptionMix:callerAndWarn
				It "--caller and --warn:" loggingLoggingOptionMixCallerAndWarn:callerAndWarn
					When run logging -m=m --caller="functionName()" --warn
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "WARN  functionName():	m"
					The status should be success
				End
				It "-c and --warn:" loggingLoggingOptionMixCallerAndWarn:cAndWarn
					When run logging -m=m -c="functionName()" --warn
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "WARN  functionName():	m"
					The status should be success
				End
				It "--caller and -w:" loggingLoggingOptionMixCallerAndWarn:callerAndW
					When run logging -m=m --caller="functionName()" -w
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "WARN  functionName():	m"
					The status should be success
				End
				It "-c and -w:" loggingLoggingOptionMixCallerAndWarn:cAndW
					When run logging -m=m -c="functionName()" -w
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "WARN  functionName():	m"
					The status should be success
				End
			End
		End
	End
End

