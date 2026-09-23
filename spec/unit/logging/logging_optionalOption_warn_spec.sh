# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% WARN:2
readonly WARN
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$WARN

Describe "Log:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Optional option:" loggingLog:optionalOption
			Describe "Warn:" loggingLogOptionalOption:warn
				It "-w" loggingLogOptionalOptionWarn:w
					When run logging -m=m -w
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "WARN :	m"
					The status should be success
				End
				It "--warn" loggingLogOptionalOptionWarn:warn
					When run logging -m=m --warn
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "WARN :	m"
					The status should be success
				End
			End
		End
	End
End

