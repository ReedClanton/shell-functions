# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
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
			Describe "Constants:" loggingLogUtil:constants
				Describe "SHELL_LOG_LEVEL:" loggingLogUtilConstants:shellLogLevel
					Describe "NONE:" loggingLogUtilConstantsShellLogLevel:none
						SHELL_LOG_LEVEL=$NONE

						It "Error" loggingLogUtilConstantsShellLogLevelNone:error
							When run logging -m=m -e
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Warn" loggingLogUtilConstantsShellLogLevelNone:warn
							When run logging -m=m -w
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Info" loggingLogUtilConstantsShellLogLevelNone:info
							When run logging -m=m -i
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Debug" loggingLogUtilConstantsShellLogLevelNone:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLogUtilConstantsShellLogLevelNone:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "ERROR:" loggingLogUtilConstantsShellLogLevel:error
						SHELL_LOG_LEVEL=$ERROR

						It "Error" loggingLogUtilConstantsShellLogLevelError:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLogUtilConstantsShellLogLevelError:warn
							When run logging -m=m -w
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Info" loggingLogUtilConstantsShellLogLevelError:info
							When run logging -m=m -i
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Debug" loggingLogUtilConstantsShellLogLevelError:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLogUtilConstantsShellLogLevelError:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "WARN:" loggingLogUtilConstantsShellLogLevel:warn
						SHELL_LOG_LEVEL=$WARN

						It "Error" loggingLogUtilConstantsShellLogLevelWarn:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLogUtilConstantsShellLogLevelWarn:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLogUtilConstantsShellLogLevelWarn:info
							When run logging -m=m -i
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Debug" loggingLogUtilConstantsShellLogLevelWarn:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLogUtilConstantsShellLogLevelWarn:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "INFO:" loggingLogUtilConstantsShellLogLevel:info
						SHELL_LOG_LEVEL=$INFO

						It "Error" loggingLogUtilConstantsShellLogLevelInfo:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLogUtilConstantsShellLogLevelInfo:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLogUtilConstantsShellLogLevelInfo:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLogUtilConstantsShellLogLevelInfo:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLogUtilConstantsShellLogLevelInfo:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "DEBUG:" loggingLogUtilConstantsShellLogLevel:debug
						SHELL_LOG_LEVEL=$DEBUG

						It "Error" loggingLogUtilConstantsShellLogLevelDebug:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLogUtilConstantsShellLogLevelDebug:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLogUtilConstantsShellLogLevelDebug:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLogUtilConstantsShellLogLevelDebug:debug
							When run logging -m=m -d
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "DEBUG:	m"
							The status should be success
						End
						It "Trace" loggingLogUtilConstantsShellLogLevelDebug:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "TRACE:" loggingLogUtilConstantsShellLogLevel:trace
						SHELL_LOG_LEVEL=$TRACE

						It "Error" loggingLogUtilConstantsShellLogLevelTrace:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLogUtilConstantsShellLogLevelTrace:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLogUtilConstantsShellLogLevelTrace:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLogUtilConstantsShellLogLevelTrace:debug
							When run logging -m=m -d
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "DEBUG:	m"
							The status should be success
						End
						It "Trace" loggingLogUtilConstantsShellLogLevelTrace:trace
							When run logging -m=m -t
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	m"
							The status should be success
						End
					End
					Describe "ALL:" loggingLogUtilConstantsShellLogLevel:all
						SHELL_LOG_LEVEL=$ALL

						It "Error" loggingLogUtilConstantsShellLogLevelAll:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLogUtilConstantsShellLogLevelAll:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLogUtilConstantsShellLogLevelAll:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLogUtilConstantsShellLogLevelAll:debug
							When run logging -m=m -d
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "DEBUG:	m"
							The status should be success
						End
						It "Trace" loggingLogUtilConstantsShellLogLevelAll:trace
							When run logging -m=m -t
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	m"
							The status should be success
						End
					End
				End
			End
		End
	End
End

