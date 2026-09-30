# Setup required environment variable(s).
% FORMATTING_CHARACTER_DOC:"#/  FORMATTING_CHARACTER_DOC"
% OUTPUT_SHELL_FUNCTION_HOME:"./output"
% OUTPUT_DOC:"#/ DESCRIPTION:"
% DEFAULT_LINE_LENGTH:10
readonly DEFAULT_LINE_LENGTH
% DEFAULT_INDENT:0
readonly DEFAULT_INDENT
% DEFAULT_CHAR:"%"
readonly DEFAULT_CHAR
% TRACE_CHAR:"."
readonly TRACE_CHAR
% INFO_CHAR:"#"
readonly INFO_CHAR
# DEBUG_CHAR set by tests.
% WARN_CHAR:"*"
readonly WANR_CHAR
% ERROR_CHAR:"!"
readonly ERROR_CHAR

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
					Describe "Multiple characters:" outputOutputOptionalOptionDebugDebugChar:multipleCharacters
						Describe "Special character:" outputOutputOptionalOptionDebugDebugCharMultipleCharacters:specialCharacter
							debugChar="\`\`"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "\`:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:backtick
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterBacktick:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterBacktick:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="~~"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "~:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:tilde
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="!!"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "!:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:exclamationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterExclamationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterExclamationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="@@"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "@:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:at
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterAt:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterAt:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="##"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "#:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:pound
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPound:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPound:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="\$\$"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "\$:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:dollar
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterDollar:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterDollar:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="%%"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "%:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:percent
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPercent:d
									When run output -m=m --pp -d
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPercent:debug
									When run output -m=m --pp --debug
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="^^"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "^:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:caret
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCaret:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCaret:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="&&"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "&:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:ampersand
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterAmpersand:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterAmpersand:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="**"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "*:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:asterisk
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterAsterisk:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterAsterisk:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="(("
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "(:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:openParenthesis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterOpenParenthesis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterOpenParenthesis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="))"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "):" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:closeParenthesis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCloseParenthesis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCloseParenthesis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="--"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "-:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:hyphen
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterHyphen:d
									When run output -m=m --pp -d
									Skip "until I fix issue #25."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterHyphen:debug
									When run output -m=m --pp --debug
									Skip "until I fix issue #25."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="__"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "_:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:underscore
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterUnderscore:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterUnderscore:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="=="
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "=:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:equals
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterEquals:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterEquals:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="++"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "+:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:plus
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPlus:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPlus:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="[["
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "[:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:openSquareBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterOpenSquareBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterOpenSquareBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="{{"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "{:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:openCurlyBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterOpenCurlyBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterOpenCurlyBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="]]"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "]:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:closeSquareBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCloseSquareBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCloseSquareBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="}}"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "}:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:closeCurlyBracket
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCloseCurlyBracket:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterCloseCurlyBracket:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="\\\\"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "\\:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:backslash
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterBackslash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									Skip "until I fix issue #24."
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterBackslash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									Skip "until I fix issue #24."
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="||"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "|:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:pipe
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPipe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPipe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=";;"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ";:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:semicolon
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterSemicolon:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterSemicolon:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="::"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "::" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:colon
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterColon:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterColon:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="''"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "':" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:singleQuote
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterSingleQuote:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterSingleQuote:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar='""'
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe '":' outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:doubleQuote
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterDoubleQuote:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterDoubleQuote:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=",,"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ",:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:comma
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterComma:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterComma:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="<<"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "<:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:lessThan
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterLessThan:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterLessThan:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=".."
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ".:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:period
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPeriod:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterPeriod:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=">>"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe ">:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:greaterThan
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterGreaterThan:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterGreaterThan:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="//"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "/:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:forwardSlash
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterForwardSlash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterForwardSlash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="??"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "?:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacter:questionMark
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterQuestionMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersSpecialCharacterQuestionMark:debug
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

