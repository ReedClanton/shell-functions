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
						Describe "Integer:" outputOutputOptionalOptionDebugDebugCharSingleCharacter:integer
							debugChar="0"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "0:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:0
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger0:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger0:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="1"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "1:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:1
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger1:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger1:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="2"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "2:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:2
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger2:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger2:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="3"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "3:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:3
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger3:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger3:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="4"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "4:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:4
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger4:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger4:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="5"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "5:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:5
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger5:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger5:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="6"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "6:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:6
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger6:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger6:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="7"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "7:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:7
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger7:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger7:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="8"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "8:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:8
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger8:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger8:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="9"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "9:" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger:9
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger9:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterInteger9:debug
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

