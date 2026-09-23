# Setup required environment variable(s).
% LOG_DOC:"#/ DESCRIPTION:"

Describe "Log:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'

		Describe "Optional option:" loggingLog:optionalOption
			Describe "Help:" loggingLogOptionalOption:help
				It "-h" loggingLogOptionalOptionHelp:h
					When run logging -h
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "$LOG_DOC"
					The status should be success
				End
				It "--help" loggingLogOptionalOptionHelp:help
					When run logging --help
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "$LOG_DOC"
					The status should be success
				End
			End
		End
	End
End

