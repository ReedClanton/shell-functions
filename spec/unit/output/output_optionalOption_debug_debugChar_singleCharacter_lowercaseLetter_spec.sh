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
						Describe "Lowercase Letter:" outputOutputOptionalOptionDebugDebugCharSingleCharacter:lowercaseLetter
							debugChar="a"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "a:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:a
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterA:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterA:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="b"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "b:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:b
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterB:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterB:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="c"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "c:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:c
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterC:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterC:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="d"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "d:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:d
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterD:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterD:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="e"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "e:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:e
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterE:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterE:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="f"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "f:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:f
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterF:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterF:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="g"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "g:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:g
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterG:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterG:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="h"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "h:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:h
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterH:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterH:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="i"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "i:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:i
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterI:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterI:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="j"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "j:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:j
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterJ:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterJ:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="k"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "k:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:k
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterK:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterK:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="l"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "l:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:l
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterL:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterl:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="m"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "m:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:m
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterM:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterM:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="n"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "n:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:n
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterN:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterN:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="o"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "o:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:o
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterO:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterO:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="p"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "p:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:p
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterP:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterP:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="q"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "q:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:q
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterQ:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterQ:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="r"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "r:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:r
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterR:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterR:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="s"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "s:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:s
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterS:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterS:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="t"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "t:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:t
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterT:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterT:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="u"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "u:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:u
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterU:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterU:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="v"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "v:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:v
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterV:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterV:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="w"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "w:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:w
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterW:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterW:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="x"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "x:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:x
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterX:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterX:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="y"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "y:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:y
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterY:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterY:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="z"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "z:" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetter:z
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterZ:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterLowercaseLetterZ:debug
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

