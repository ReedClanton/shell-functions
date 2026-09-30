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
					Describe "Lowercase Letter:" outputOutputOptionalOptionFormattingCharacterSingleCharacter:lowercaseLetter
						Describe "a:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:a
							fChar="a"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterA:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterA:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "b:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:b
							fChar="b"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterB:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterB:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "c:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:c
							fChar="c"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterC:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterC:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "d:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:f
							fChar="d"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterD:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterD:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "e:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:e
							fChar="e"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterE:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterE:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "f:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:f
							fChar="f"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterF:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterF:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "g:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:g
							fChar="g"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterG:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterG:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "h:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:h
							fChar="h"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterH:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterH:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "i:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:i
							fChar="i"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterI:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterI:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "j:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:j
							fChar="j"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterJ:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterJ:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "k:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:k
							fChar="k"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterK:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterK:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "l:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:l
							fChar="l"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterL:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterl:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "m:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:m
							fChar="m"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterM:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterM:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "n:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:n
							fChar="n"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterN:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterN:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "o:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:o
							fChar="o"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterO:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterO:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "p:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:p
							fChar="p"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterP:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterP:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "q:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:q
							fChar="q"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterQ:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterQ:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "r:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:r
							fChar="r"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterR:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterR:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "s:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:s
							fChar="s"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterS:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterS:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "t:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:t
							fChar="t"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterT:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterT:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "u:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:u
							fChar="u"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterU:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterU:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "v:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:v
							fChar="v"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterV:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterV:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "w:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:w
							fChar="w"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterW:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterW:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "x:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:x
							fChar="x"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterX:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterX:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "y:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:y
							fChar="y"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterY:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterY:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "z:" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetter:z
							fChar="z"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterZ:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterLowercaseLetterZ:formattingCharacter
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

