Describe "Logging:" logging
	Describe "Util:" logging:util
		Describe "Constants:" loggingUtil:constants
			# Makes test easier to read and maintain.
			constants=$PWD/logging/util/constants.sh

			Describe "Shell compatibility:" loggingUtilConstants:shellCompatibility
				It "Source file" loggingUtilConstantsShellCompatibility:sourceFile
					When run source $constants
					The stderr should not be present
					The stdout should not be present
					The status should be success
				End
			End

			Describe "Environment variable:" loggingUtilConstants:environmentVariable
				Describe "NO_TITLE:" loggingUtilConstantsEnvironmentVariable:noTitle
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableNoTitle:set
							The variable NO_TITLE should be present
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableNoTitle:readonly
							The variable NO_TITLE should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableNoTitle:exported
							The variable NO_TITLE should be exported
						End
					End
				End
				Describe "FULL_TITLE:" loggingUtilConstantsEnvironmentVariable:fullTitle
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableFullTitle:set
							The value "$FULL_TITLE" should be present
						End
						It "Is greater than NO_TITLE" loggingUtilConstantsEnvironmentVariableFullTitle:isGreaterThanNoTitle
							The value "$FULL_TITLE" should satisfy isGreaterThan $FULL_TITLE $NO_TITLE
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableFullTitle:readonly
							The variable FULL_TITLE should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableFullTitle:exported
							The variable FULL_TITLE should be exported
						End
					End
				End
				Describe "LINE_TITLE:" loggingUtilConstantsEnvironmentVariable:lineTitle
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableLineTitle:set
							The value "$LINE_TITLE" should be present
						End
						It "Is greater than FULL_TITLE" loggingUtilConstantsEnvironmentVariableFullTitle:isGreaterThanFullTitle
							The value "$FULL_TITLE" should satisfy isGreaterThan $LINE_TITLE $FULL_TITLE
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableLineTitle:readonly
							The variable LINE_TITLE should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableLineTitle:exported
							The variable LINE_TITLE should be exported
						End
					End
				End
				Describe "NONE:" loggingUtilConstantsEnvironmentVariable:none
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableNone:set
							The value "$NONE" should be present
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableNone:readonly
							The variable NONE should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableNone:exported
							The variable NONE should be exported
						End
					End
				End
				Describe "ERROR:" loggingUtilConstantsEnvironmentVariable:error
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableError:set
							The value "$ERROR" should be present
						End
						It "Is greater than NONE" loggingUtilConstantsEnvironmentVariableError:isGreaterThanNone
							The value "$ERROR" should satisfy isGreaterThan $ERROR $NONE
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableError:readonly
							The variable ERROR should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableError:exported
							The variable ERROR should be exported
						End
					End
				End
				Describe "WARN:" loggingUtilConstantsEnvironmentVariable:warn
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableWarn:set
							The value "$WARN" should be present
						End
						It "Is greater than ERROR" loggingUtilConstantsEnvironmentVariableWarn:isGreaterThanError
							The value "$WARN" should satisfy isGreaterThan $WARN $ERROR
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableWarn:readonly
							The variable WARN should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableWarn:exported
							The variable WARN should be exported
						End
					End
				End
				Describe "INFO:" loggingUtilConstantsEnvironmentVariable:info
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableInfo:set
							The value "$INFO" should be present
						End
						It "Is greater than WARN" loggingUtilConstantsEnvironmentVariableInfo:isGreaterThanWarn
							The value "$INFO" should satisfy isGreaterThan $INFO $WARN
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableInfo:readonly
							The variable INFO should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableInfo:exported
							The variable INFO should be exported
						End
					End
				End
				Describe "DEBUG:" loggingUtilConstantsEnvironmentVariable:debug
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableDebug:set
							The value "$DEBUG" should be present
						End
						It "Is greater than INFO" loggingUtilConstantsEnvironmentVariableDebug:isGreaterThanInfo
							The value "$DEBUG" should satisfy isGreaterThan $DEBUG $INFO
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableDebug:readonly
							The variable DEBUG should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableDebug:exported
							The variable DEBUG should be exported
						End
					End
				End
				Describe "TRACE:" loggingUtilConstantsEnvironmentVariable:trace
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableTrace:set
							The value "$TRACE" should be present
						End
						It "Is greater than DEBUG" loggingUtilConstantsEnvironmentVariableTrace:isGreaterThanDebug
							The value "$TRACE" should satisfy isGreaterThan $TRACE $DEBUG
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableTrace:readonly
							The variable TRACE should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableTrace:exported
							The variable TRACE should be exported
						End
					End
				End
				Describe "ALL:" loggingUtilConstantsEnvironmentVariable:all
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableAll:set
							The value "$ALL" should be present
						End
						It "Is greater than TRACE" loggingUtilConstantsEnvironmentVariableAll:isGreaterThanTrace
							The value "$ALL" should satisfy isGreaterThan $ALL $TRACE
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Readonly" loggingUtilConstantsEnvironmentVariableAll:readonly
							The variable ALL should be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableAll:exported
							The variable ALL should be exported
						End
					End
				End
				Describe "SHELL_LOG_LEVEL:" loggingUtilConstantsEnvironmentVariable:shellLogLevel
					Describe
						# Environment setup that works for most tests and shells.
						sourceCut() { . $constants; }
						BeforeAll 'sourceCut'

						It "Set" loggingUtilConstantsEnvironmentVariableShellLogLevel:set
							The value "$SHELL_LOG_LEVEL" should be present
						End
						It "Is inclusively between NONE and ALL" loggingUtilConstantsEnvironmentVariableShellLogLevel:isInclusivelyBetweenNoneAndAll
							The value "$SHELL_LOG_LEVEL" should satisfy isInclusivelyBetween $NONE $SHELL_LOG_LEVEL $ALL
						End
					End
					Describe
						# No idea why, but some shells require `Include` for this test to pass (like zsh)...
						Include $constants

						It "Not readonly" loggingUtilConstantsEnvironmentVariableShellLogLevel:notReadonly
							The variable SHELL_LOG_LEVEL should not be readonly
						End
						It "Exported" loggingUtilConstantsEnvironmentVariableShellLogLevel:exported
							The variable SHELL_LOG_LEVEL should be exported
						End
					End
				End
			End
		End
	End
End

