# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
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

		Describe "Optional option:" loggingLog:optionalOption
			Describe "Caller:" loggingLogOptionalOption:caller
				Describe "-c:" loggingLogOptionalOptionCaller:c
					It "Function name" loggingLogOptionalOptionCallerC:functionName
						When run logging -m=m -c="functionName()"
						The stderr should not be present
						The lines of stdout should equal 1
						The stdout line 1 should equal "TRACE functionName():	m"
						The status should be success
					End
					It "User" loggingLogOptionalOptionCallerC:user
						When run logging -m=m -c="SomeUser-Name1"
						The stderr should not be present
						The lines of stdout should equal 1
						The stdout line 1 should equal "TRACE SomeUser-Name1:	m"
						The status should be success
					End
				End
				Describe "--caller:" loggingLogOptionalOptionCaller:caller
					It "Function name" loggingLogOptionalOptionCallerCaller:functionName
						When run logging -m=m --caller="functionName()"
						The stderr should not be present
						The lines of stdout should equal 1
						The stdout line 1 should equal "TRACE functionName():	m"
						The status should be success
					End
					It "User" loggingLogOptionalOptionCallerCaller:user
						When run logging -m=m --caller="SomeUser-Name1"
						The stderr should not be present
						The lines of stdout should equal 1
						The stdout line 1 should equal "TRACE SomeUser-Name1:	m"
						The status should be success
					End
				End
			End
		End
	End
End

