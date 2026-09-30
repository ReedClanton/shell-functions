# Setup required environment variable(s).
% LOGGING_SHELL_FUNCTION_HOME:"./logging"
% LOGGING_DOC:"#/ DESCRIPTION:"
% NO_TITLE:0
readonly NO_TITLE
% FULL_TITLE:1
readonly FULL_TITLE
% LINE_TITLE:2
readonly LINE_TITLE
% NONE:0
readonly NONE
% ERROR:1
readonly ERROR
% WARN:2
readonly WARN
% INFO:3
readonly INFO
% DEBUG:4
readonly DEBUG
% TRACE:5
readonly TRACE
% ALL:6
readonly ALL
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

		Describe "Option mix:" loggingLogging:optionMix
			Describe "Caller and debug:" loggingLoggingOptionMix:callerAndDebug
				It "--caller and --debug:" loggingLoggingOptionMixCallerAndDebug:callerAndDebug
					When run logging -m=m --caller="functionName()" --debug
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG functionName():	m"
					The status should be success
				End
				It "-c and --debug:" loggingLoggingOptionMixCallerAndDebug:cAndDebug
					When run logging -m=m -c="functionName()" --debug
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG functionName():	m"
					The status should be success
				End
				It "--caller and -d:" loggingLoggingOptionMixCallerAndDebug:callerAndD
					When run logging -m=m --caller="functionName()" -d
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "DEBUG functionName():	m"
					The status should be success
				End
				It "-c and -d:" loggingLoggingOptionMixCallerAndDebug:cAndD
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

