# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% FULL_TITLE:1
readonly FULL_TITLE
% LINE_TITLE:2
readonly LINE_TITLE
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

		Describe "Util:" loggingLog:util
			Describe "output():" loggingLogUtil:output
				Describe "Failure:" loggingLogUtilOutput:failure
					Describe "Non zero return code:" loggingLogUtilOutputFailure:nonZeroReturnCode
						It "3" loggingLogUtilOutputFailureNonZeroReturnCode:3
							output() { return $MINOR_EXECUTION_FAILURE_RT; }
							When run logging -m=m --full-title
							The lines of stderr should equal 1
							The stderr line 1 should start with "ERROR logging(): "
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	m"
							The status should equal $MINOR_EXECUTION_FAILURE_RT
						End
						It "140" loggingLogUtilOutputFailureNonZeroReturnCode:140
							output() { return $OPTION_NAME_INVALID_RT; }
							When run logging -m=m --line-title
							The lines of stderr should equal 1
							The stderr line 1 should start with "ERROR logging(): "
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	m"
							The status should equal $MINOR_EXECUTION_FAILURE_RT
						End
						It "141" loggingLogUtilOutputFailureNonZeroReturnCode:141
							output() { return $OPTION_VALUE_INVALID_RT; }
							When run logging -m=ms --full-title
							The lines of stderr should equal 1
							The stderr line 1 should start with "ERROR logging(): "
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	ms"
							The status should equal $MINOR_EXECUTION_FAILURE_RT
						End
						It "142" loggingLogUtilOutputFailureNonZeroReturnCode:142
							output() { return $OPTION_REQUIRED_NOT_PROVIDED_RT; }
							When run logging -m=ms --line-title
							The lines of stderr should equal 1
							The stderr line 1 should start with "ERROR logging(): "
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	ms"
							The status should equal $MINOR_EXECUTION_FAILURE_RT
						End
						It "200" loggingLogUtilOutputFailureNonZeroReturnCode:200
							output() { return $ENV_VAR_BAD_VALUE_RT; }
							When run logging -m="message 1" -m=msg2 --full-title
							The lines of stderr should equal 1
							The stderr line 1 should start with "ERROR logging(): "
							The lines of stdout should equal 2
							The stdout line 1 should equal "TRACE:	message 1"
							The stdout line 2 should equal "msg2"
							The status should equal $MINOR_EXECUTION_FAILURE_RT
						End
					End
				End
			End
		End
	End
End

