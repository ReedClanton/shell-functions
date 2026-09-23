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

		Describe "Optional option:" loggingLogging:optionalOption
			Describe "Caller:" loggingLoggingOptionalOption:caller
				Describe "-c:" loggingLoggingOptionalOptionCaller:c
					It "Function name" loggingLoggingOptionalOptionCallerC:functionName
						When run logging -m=m -c="functionName()"
						The stderr should not be present
						The lines of stdout should equal 1
						The stdout line 1 should equal "TRACE functionName():	m"
						The status should be success
					End
					It "User" loggingLoggingOptionalOptionCallerC:user
						When run logging -m=m -c="SomeUser-Name1"
						The stderr should not be present
						The lines of stdout should equal 1
						The stdout line 1 should equal "TRACE SomeUser-Name1:	m"
						The status should be success
					End
				End
				Describe "--caller:" loggingLoggingOptionalOptionCaller:caller
					It "Function name" loggingLoggingOptionalOptionCallerCaller:functionName
						When run logging -m=m --caller="functionName()"
						The stderr should not be present
						The lines of stdout should equal 1
						The stdout line 1 should equal "TRACE functionName():	m"
						The status should be success
					End
					It "User" loggingLoggingOptionalOptionCallerCaller:user
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

