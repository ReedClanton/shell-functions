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
					Describe "Single character:" outputOutputOptionalOptionDebugDebugChar:singleCharacter
						Describe "Uppercase Letter:" outputOutputOptionalOptionDebugDebugCharSingleCharacter:uppercaseLetter
							debugChar="A"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "A:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:a
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterA:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterA:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="B"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "B:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:b
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterB:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterB:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="C"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "C:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:c
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterC:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterC:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="D"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "D:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:d
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterD:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterD:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="E"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "E:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:e
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterE:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterE:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="F"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "F:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:f
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterF:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterF:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="G"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "G:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:g
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterG:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterG:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="H"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "H:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:h
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterH:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterH:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="I"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "I:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:i
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterI:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterI:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="J"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "J:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:j
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterJ:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterJ:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="K"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "K:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:k
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterK:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterK:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="L"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "L:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:l
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterL:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterl:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="M"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "M:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:m
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterM:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterM:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="N"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "N:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:n
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterN:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterN:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="O"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "O:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:o
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterO:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterO:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="P"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "P:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:p
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterP:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterP:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Q"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Q:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:q
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterQ:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterQ:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="R"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "R:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:r
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterR:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterR:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="S"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "S:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:s
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterS:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterS:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="T"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "T:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:t
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterT:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterT:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="U"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "U:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:u
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterU:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterU:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="V"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "V:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:v
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterV:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterV:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="W"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "W:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:w
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterW:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterW:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="X"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "X:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:x
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterX:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterX:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Y"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Y:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:y
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterY:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterY:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Z"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Z:" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetter:z
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterZ:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterUppercaseLetterZ:debug
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

