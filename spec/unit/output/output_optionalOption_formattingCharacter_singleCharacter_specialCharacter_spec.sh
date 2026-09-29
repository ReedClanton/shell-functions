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
% DEBUG_CHAR:"+"
readonly DEBUG_CHAR
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
			Describe "Formatting character:" outputOutputOptionalOption:formattingCharacter
				Describe "Single character:" outputOutputOptionalOptionFormattingCharacter:singleCharacter
					Describe "Special character:" outputOutputOptionalOptionFormattingCharacterSingleCharacter:specialCharacter
						Describe "\`:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:backtick
							fChar="\`"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterBacktick:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterBacktick:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "~:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:tilde
							fChar="~"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterTilde:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "!:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:exclamationMark
							fChar="!"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterExclamationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterExclamationMark:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "@:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:at
							fChar="@"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterAt:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterAt:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "#:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:pound
							fChar="#"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPound:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPound:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "\$:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:follar
							Describe "Escaped:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDollar:escaped
								fChar="\$"

								It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDollarEscaped:f
									When run output -m=m --pp -f="$fChar"
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
								It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDollarEscaped:formattingCharacter
									When run output -m=m --pp --formatting-character="$fChar"
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
							End
							Describe "Not escaped:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDollar:notEscaped
								fChar="$"

								It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDollarNotEscaped:f
									When run output -m=m --pp -f="$fChar"
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
								It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDollarNotEscaped:formattingCharacter
									When run output -m=m --pp --formatting-character="$fChar"
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
							End
						End
						Describe "%:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:percent
							Describe "Escaped:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPercent:escaped
								fChar="\%"

								It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPercentEscaped:f
									When run output -m=m --pp -f="$fChar"
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
								It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPercentEscaped:formattingCharacter
									When run output -m=m --pp --formatting-character="$fChar"
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
							End
							Describe "Not Escaped:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPercent:notEscaped
								fChar="%"

								It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPercentNotEscaped:f
									When run output -m=m --pp -f="$fChar"
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
								It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPercentNotEscaped:formattingCharacter
									When run output -m=m --pp --formatting-character="$fChar"
									Skip "until I fix issue #26."
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$fChar m $fChar"
									The status should be success
								End
							End
						End
						Describe "^:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:caret
							fChar="^"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCaret:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCaret:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "&:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:ampersand
							fChar="&"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterAmpersand:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterAmpersand:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "*:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:asterisk
							fChar="*"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterAsterisk:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterAsterisk:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "(:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:openParenthesis
							fChar="("

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterOpenParenthesis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterOpenParenthesis:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "):" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:closeParenthesis
							fChar=")"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCloseParenthesis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCloseParenthesis:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "-:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:hyphen
							fChar="-"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterHyphen:f
								When run output -m=m --pp -f="$fChar"
								Skip "until I fix issue #25."
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterHyphen:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								Skip "until I fix issue #25."
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "_:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:underscore
							fChar="_"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterUnderscore:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterUnderscore:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "=:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:equals
							fChar="="

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterEquals:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterEquals:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "+:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:plus
							fChar="+"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPlus:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPlus:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "[:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:openSquareBracket
							fChar="["

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterOpenSquareBracket:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterOpenSquareBracket:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "{:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:openCurlyBracket
							fChar="{"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterOpenCurlyBracket:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterOpenCurlyBracket:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "]:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:closeSquareBracket
							fChar="]"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCloseSquareBracket:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCloseSquareBracket:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "}:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:closeCurlyBracket
							fChar="}"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCloseCurlyBracket:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterCloseCurlyBracket:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "\\:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:backslash
							fChar="\\"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterBackslash:f
								When run output -m=m --pp -f="$fChar"
								Skip "until I fix issue #24."
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterBackslash:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								Skip "until I fix issue #24."
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "|:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:pipe
							fChar="|"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPipe:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPipe:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe ";:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:semicolon
							fChar=";"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterSemicolon:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterSemicolon:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "::" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:colon
							fChar=":"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterColon:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterColon:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "':" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:singleQuote
							fChar="'"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterSingleQuote:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterSingleQuote:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe '":' outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:foubleQuote
							fChar='"'

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDoubleQuote:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterDoubleQuote:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe ",:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:comma
							fChar=","

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterComma:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterComma:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "<:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:lessThan
							fChar="<"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterLessThan:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterLessThan:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe ".:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:period
							fChar="."

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPeriod:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterPeriod:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe ">:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:greaterThan
							fChar=">"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterGreaterThan:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterGreaterThan:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "/:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:forwardSlash
							fChar="/"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterForwardSlash:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterForwardSlash:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "?:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:questionMark
							fChar="?"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterQuestionMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterQuestionMark:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Space:" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacter:space
							fChar=" "

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterSpace:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterSpecialCharacterSpace:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
					End
				End
			End
		End
	End
End

