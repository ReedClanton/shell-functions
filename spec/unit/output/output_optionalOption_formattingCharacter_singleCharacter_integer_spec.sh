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
					Describe "Integer:" outputOutputOptionalOptionFormattingCharacterSingleCharacter:integer
						Describe "0:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:0
							fChar="0"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger0:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger0:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "1:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:1
							fChar="1"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger1:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger1:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "2:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:2
							fChar="2"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger2:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger2:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "3:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:3
							fChar="3"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger3:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger3:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "4:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:4
							fChar="4"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger4:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger4:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "5:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:5
							fChar="5"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger5:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger5:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "6:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:6
							fChar="6"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger6:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger6:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "7:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:7
							fChar="7"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger7:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger7:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "8:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:8
							fChar="8"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger8:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger8:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "9:" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger:9
							fChar="9"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger9:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterInteger9:formattingCharacter
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

