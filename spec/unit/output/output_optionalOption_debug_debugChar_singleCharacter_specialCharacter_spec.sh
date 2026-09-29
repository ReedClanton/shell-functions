# Setup required environment variable(s).
% OUTPUT_SHELL_FUNCTION_HOME:"./output"
% OUTPUT_DOC:"#/ DESCRIPTION:"
% DEFAULT_LINE_LENGTH:10
readonly DEFAULT_LINE_LENGTH
% DEFAULT_INDENT:0
readonly DEFAULT_INDENT
% DEFAULT_CHAR:"%"
readonly DEFAULT_CHAR
# DEBUG_CHAR set by tests.

Describe "Output:" output
	Describe "output():" output:output
		# Track path to file that contains CUT.
		cutPath=$PWD/output/output.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll "sourceCut"

		Describe "Optional option:" outputOutput:optionalOption
			Describe "Debug:" outputOutputOptionalOption:debug
				Describe "DEBUG_CHAR:" outputOutputOptionalOptionDebug:debugChar
					Describe "Single character:" outputOutputOptionalOptionDebugDebugChar:singleCharacter
						Describe "Special character:" outputOutputOptionalOptionDebugDebugCharSingleCharacter:specialCharacter
							debugChar="\`"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "\`:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:backtick
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterBacktick:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterBacktick:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="~"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "~:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:tilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="!"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "!:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:exclamationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterExclamationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterExclamationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="@"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "@:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:at
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterAt:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterAt:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="#"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "#:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:pound
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPound:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPound:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							Describe "\$:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:dollar
								Describe "Escaped:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDollar:escaped
									debugChar="\$"
									setDebugChar() { DEBUG_CHAR="$debugChar"; }
									BeforeEach "setDebugChar"

									It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDollarEscaped:d
									    When run output -m=m --pp -d
									    The stderr should not be present
									    The lines of stdout should equal 1
									    The stdout line 1 should equal "$debugChar m $debugChar"
									    The status should be success
									End
									It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDollarEscaped:debug
									    When run output -m=m --pp --debug
									    The stderr should not be present
									    The lines of stdout should equal 1
									    The stdout line 1 should equal "$debugChar m $debugChar"
									    The status should be success
									End
								End
								Describe "Not escaped:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDollar:notEscaped
									debugChar="$"
									setDebugChar() { DEBUG_CHAR="$debugChar"; }
									BeforeEach "setDebugChar"

									It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDollarNotEscaped:d
									    When run output -m=m --pp -d
									    The stderr should not be present
									    The lines of stdout should equal 1
									    The stdout line 1 should equal "$debugChar m $debugChar"
									    The status should be success
									End
									It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDollarNotEscaped:debug
									    When run output -m=m --pp --debug
									    The stderr should not be present
									    The lines of stdout should equal 1
									    The stdout line 1 should equal "$debugChar m $debugChar"
									    The status should be success
									End
								End
							End

							debugChar="%"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "%:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:percent
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPercent:d
									When run output -m=m --pp -d
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPercent:debug
									When run output -m=m --pp --debug
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="^"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "^:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:caret
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCaret:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCaret:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="&"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "&:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:ampersand
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterAmpersand:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterAmpersand:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="*"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "*:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:asterisk
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterAsterisk:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterAsterisk:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="("
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "(:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:openParenthesis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterOpenParenthesis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterOpenParenthesis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=")"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "):" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:closeParenthesis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCloseParenthesis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCloseParenthesis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="-"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "-:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:hyphen
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterHyphen:d
									When run output -m=m --pp -d
									Skip "until I fix issue #25."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterHyphen:debug
									When run output -m=m --pp --debug
									Skip "until I fix issue #25."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="_"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "_:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:underscore
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterUnderscore:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterUnderscore:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="="
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "=:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:equals
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterEquals:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterEquals:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="+"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "+:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:plus
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPlus:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPlus:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="["
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "[:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:openSquareBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterOpenSquareBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterOpenSquareBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="{"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "{:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:openCurlyBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterOpenCurlyBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterOpenCurlyBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="]"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "]:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:closeSquareBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCloseSquareBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCloseSquareBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="}"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "}:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:closeCurlyBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCloseCurlyBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterCloseCurlyBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="\\"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "\\:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:backslash
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterBackslash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									Skip "until I fix issue #24."
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterBackslash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									Skip "until I fix issue #24."
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="|"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "|:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:pipe
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPipe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPipe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=";"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ";:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:semicolon
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterSemicolon:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterSemicolon:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=":"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "::" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:colon
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterColon:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterColon:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="'"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "':" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:singleQuote
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterSingleQuote:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterSingleQuote:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar='"'
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe '":' outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:doubleQuote
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDoubleQuote:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterDoubleQuote:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=","
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ",:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:comma
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterComma:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterComma:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="<"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "<:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:lessThan
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterLessThan:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterLessThan:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="."
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ".:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:period
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPeriod:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterPeriod:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=">"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ">:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:greaterThan
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterGreaterThan:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterGreaterThan:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="/"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "/:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:forwardSlash
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterForwardSlash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterForwardSlash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="?"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "?:" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacter:questionMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterQuestionMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterSpecialCharacterQuestionMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End
						End
					End
				End
			End
		End
	End
End

