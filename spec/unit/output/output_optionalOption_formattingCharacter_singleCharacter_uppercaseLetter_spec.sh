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
			Describe "Formatting Character:" outputOutputOptionalOption:formattingCharacter
				Describe "Single character:" outputOutputOptionalOptionFormattingCharacter:singleCharacter
					Describe "Uppercase Letter:" outputOutputOptionalOptionFormattingCharacterSingleCharacter:uppercaseLetter
						Describe "A:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:a
							fChar="A"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterA:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterA:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "B:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:b
							fChar="B"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterB:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterB:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "C:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:c
							fChar="C"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterC:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterC:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "D:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:f
							fChar="D"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterD:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterD:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "E:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:e
							fChar="E"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterE:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterE:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "F:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:f
							fChar="F"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterF:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterF:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "G:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:g
							fChar="G"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterG:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterG:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "H:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:h
							fChar="H"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterH:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterH:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "I:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:i
							fChar="I"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterI:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterI:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "J:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:j
							fChar="J"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterJ:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterJ:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "K:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:k
							fChar="K"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterK:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterK:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "L:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:l
							fChar="L"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterL:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterl:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "M:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:m
							fChar="M"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterM:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterM:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "N:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:n
							fChar="N"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterN:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterN:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "O:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:o
							fChar="O"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterO:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterO:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "P:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:p
							fChar="P"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterP:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterP:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Q:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:q
							fChar="Q"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterQ:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterQ:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "R:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:r
							fChar="R"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterR:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterR:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "S:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:s
							fChar="S"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterS:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterS:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "T:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:t
							fChar="T"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterT:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterT:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "U:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:u
							fChar="U"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterU:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterU:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "V:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:v
							fChar="V"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterV:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterV:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "W:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:w
							fChar="W"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterW:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterW:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "X:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:x
							fChar="X"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterX:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterX:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Y:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:y
							fChar="Y"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterY:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterY:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Z:" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetter:z
							fChar="Z"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterZ:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterUppercaseLetterZ:formattingCharacter
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

