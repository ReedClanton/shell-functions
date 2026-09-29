# Setup required environment variable(s).
% LOGGING_SHELL_FUNCTION_HOME:"./logging"
% LOGGING_DOC:"#/ DESCRIPTION:"
% NO_TITLE:0
readonly NO_TITLE
% FULL_TITLE:1
readonly FULL_TITLE
% LINE_TITLE:2
readonly LINE_TITLE
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
% SHELL_LOG_LEVEL:$TRACE

# Used when mocking out the `output()` function.
% DEFAULT_CHAR:'#'

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
			Describe "--full-title:" loggingLoggingOptionalOption:fullTitle
				It "Single message line" loggingLoggingOptionalOptionFullTitleSingleCharacterFormattingCharacter:singleMessageLine
					# Mock out the `output()` function.
					output() {
						echo " $DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR"
						echo "$DEFAULT_CHAR m $DEFAULT_CHAR"
						echo " $DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR"
					}
					When run logging -m=m --full-title
					The stderr should not be present
					The lines of stdout should equal 4
					The stdout line 1 should equal "TRACE:	"
					The stdout line 2 should equal " ###"
					The stdout line 3 should equal "# m #"
					The stdout line 4 should equal " ###"
					The status should be success
				End
				It "Multiline message" loggingLoggingOptionalOptionFullTitleSingleCharacterFormattingCharacter:multilineMessage
					# Mock out the `output()` function.
					output() {
						echo " $DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR"
						echo "$DEFAULT_CHAR ms   $DEFAULT_CHAR"
						echo "$DEFAULT_CHAR msg2 $DEFAULT_CHAR"
						echo " $DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR$DEFAULT_CHAR"
					}
					When run logging -m=ms -m=msg2 --full-title
					The stderr should not be present
					The lines of stdout should equal 5
					The stdout line 1 should equal "TRACE:	"
					The stdout line 2 should equal " ######"
					The stdout line 3 should equal "# ms   #"
					The stdout line 4 should equal "# msg2 #"
					The stdout line 5 should equal " ######"
					The status should be success
				End
			End
		End
	End
End

