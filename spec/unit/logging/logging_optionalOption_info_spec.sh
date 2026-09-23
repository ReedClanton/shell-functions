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

		Describe "Optional option:" loggingLog:optionalOption
			Describe "Info:" loggingLogOptionalOption:info
				It "-i" loggingLogOptionalOptionInfo:d
					When run logging -m=m -i
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "INFO :	m"
					The status should be success
				End
				It "--info" loggingLogOptionalOptionInfo:info
					When run logging -m=m --info
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "INFO :	m"
					The status should be success
				End
			End
		End
	End
End

