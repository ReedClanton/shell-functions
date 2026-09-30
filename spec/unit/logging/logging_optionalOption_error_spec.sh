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

