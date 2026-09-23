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

Describe "Logging:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Util:" loggingLogging:util
			Describe "Constants:" loggingLoggingUtil:constants
				Describe "SHELL_LOG_LEVEL:" loggingLoggingUtilConstants:shellLogLevel
					Describe "NONE:" loggingLoggingUtilConstantsShellLogLevel:none
						SHELL_LOG_LEVEL=$NONE

						It "Error" loggingLoggingUtilConstantsShellLogLevelNone:error
							When run logging -m=m -e
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Warn" loggingLoggingUtilConstantsShellLogLevelNone:warn
							When run logging -m=m -w
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Info" loggingLoggingUtilConstantsShellLogLevelNone:info
							When run logging -m=m -i
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Debug" loggingLoggingUtilConstantsShellLogLevelNone:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLoggingUtilConstantsShellLogLevelNone:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "ERROR:" loggingLoggingUtilConstantsShellLogLevel:error
						SHELL_LOG_LEVEL=$ERROR

						It "Error" loggingLoggingUtilConstantsShellLogLevelError:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLoggingUtilConstantsShellLogLevelError:warn
							When run logging -m=m -w
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Info" loggingLoggingUtilConstantsShellLogLevelError:info
							When run logging -m=m -i
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Debug" loggingLoggingUtilConstantsShellLogLevelError:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLoggingUtilConstantsShellLogLevelError:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "WARN:" loggingLoggingUtilConstantsShellLogLevel:warn
						SHELL_LOG_LEVEL=$WARN

						It "Error" loggingLoggingUtilConstantsShellLogLevelWarn:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLoggingUtilConstantsShellLogLevelWarn:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLoggingUtilConstantsShellLogLevelWarn:info
							When run logging -m=m -i
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Debug" loggingLoggingUtilConstantsShellLogLevelWarn:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLoggingUtilConstantsShellLogLevelWarn:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "INFO:" loggingLoggingUtilConstantsShellLogLevel:info
						SHELL_LOG_LEVEL=$INFO

						It "Error" loggingLoggingUtilConstantsShellLogLevelInfo:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLoggingUtilConstantsShellLogLevelInfo:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLoggingUtilConstantsShellLogLevelInfo:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLoggingUtilConstantsShellLogLevelInfo:debug
							When run logging -m=m -d
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
						It "Trace" loggingLoggingUtilConstantsShellLogLevelInfo:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "DEBUG:" loggingLoggingUtilConstantsShellLogLevel:debug
						SHELL_LOG_LEVEL=$DEBUG

						It "Error" loggingLoggingUtilConstantsShellLogLevelDebug:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLoggingUtilConstantsShellLogLevelDebug:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLoggingUtilConstantsShellLogLevelDebug:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLoggingUtilConstantsShellLogLevelDebug:debug
							When run logging -m=m -d
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "DEBUG:	m"
							The status should be success
						End
						It "Trace" loggingLoggingUtilConstantsShellLogLevelDebug:trace
							When run logging -m=m -t
							The stderr should not be present
							The stdout should not be present
							The status should be success
						End
					End
					Describe "TRACE:" loggingLoggingUtilConstantsShellLogLevel:trace
						SHELL_LOG_LEVEL=$TRACE

						It "Error" loggingLoggingUtilConstantsShellLogLevelTrace:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLoggingUtilConstantsShellLogLevelTrace:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLoggingUtilConstantsShellLogLevelTrace:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLoggingUtilConstantsShellLogLevelTrace:debug
							When run logging -m=m -d
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "DEBUG:	m"
							The status should be success
						End
						It "Trace" loggingLoggingUtilConstantsShellLogLevelTrace:trace
							When run logging -m=m -t
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	m"
							The status should be success
						End
					End
					Describe "ALL:" loggingLoggingUtilConstantsShellLogLevel:all
						SHELL_LOG_LEVEL=$ALL

						It "Error" loggingLoggingUtilConstantsShellLogLevelAll:error
							When run logging -m=m -e
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "ERROR:	m"
							The status should be success
						End
						It "Warn" loggingLoggingUtilConstantsShellLogLevelAll:warn
							When run logging -m=m -w
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "WARN :	m"
							The status should be success
						End
						It "Info" loggingLoggingUtilConstantsShellLogLevelAll:info
							When run logging -m=m -i
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "INFO :	m"
							The status should be success
						End
						It "Debug" loggingLoggingUtilConstantsShellLogLevelAll:debug
							When run logging -m=m -d
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "DEBUG:	m"
							The status should be success
						End
						It "Trace" loggingLoggingUtilConstantsShellLogLevelAll:trace
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

