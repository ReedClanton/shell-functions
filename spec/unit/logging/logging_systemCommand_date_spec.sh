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

		Describe "Mock date():" loggingLogging:mockDate
			It "Not defined" loggingLoggingMockDate:notDefined
				When run logging -m=m
				The stderr should not be present
				The lines of stdout should equal 1
				The stdout line 1 should equal "TRACE:	m"
				The status should be success
			End
			It "Defined" loggingLoggingMockDate:defined
				date() { echo "2023/04/26 14:11:16 MDT"; }
				When run logging -m=m
				The stderr should not be present
				The lines of stdout should equal 1
				The stdout line 1 should equal "2023/04/26 14:11:16 MDT TRACE:	m"
				The status should be success
			End
		End
	End
End

