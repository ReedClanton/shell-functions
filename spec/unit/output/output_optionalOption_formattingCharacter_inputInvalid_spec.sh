# Setup required environment variable(s).
% FORMATTING_CHARACTER_DOC:"#/  FORMATTING_CHARACTER_DOC"
% OUTPUT_SHELL_FUNCTION_HOME:"./output"
% OUTPUT_DOC:"#/ DESCRIPTION:"
% DEFAULT_LINE_LENGTH:10
readonly DEFAULT_LINE_LENGTH
% DEFAULT_INDENT:0
readonly DEFAULT_INDENT
% DEFAULT_CHAR:'%'
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
		BeforeAll 'sourceCut'

		Describe "Optional option:" outputOutput:optionalOption
			Describe "Formatting character:" outputOutputOptionalOption:formattingCharacter
				Describe "Input invalid:" outputOutputOptionalOptionFormattingCharacter:inputInvalid
					Describe "Blank:" outputOutputOptionalOptionFormattingCharacterInputInvalid:blank
						It "-f" outputOutputOptionalOptionFormattingCharacterInputInvalidBlank:f
							When run output -m=m -f=""
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$FORMATTING_CHARACTER_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "--formatting-character" outputOutputOptionalOptionFormattingCharacterInputInvalidBlank:formattingCharacter
							When run output -m=m --formatting-character=""
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$FORMATTING_CHARACTER_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
					End
					Describe "Null:" outputOutputOptionalOptionFormattingCharacterInputInvalid:null
						It "-f" outputOutputOptionalOptionFormattingCharacterInputInvaliNull:f
							When run output -m=m -f=
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$FORMATTING_CHARACTER_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "--formatting-character" outputOutputOptionalOptionFormattingCharacterInputInvaliNull:formattingCharacter
							When run output -m=m --formatting-character=
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$FORMATTING_CHARACTER_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
					End
					Describe "Missing:" outputOutputOptionalOptionFormattingCharacterInputInvalid:missing
						It "-f" outputOutputOptionalOptionFormattingCharacterInputInvalidMissing:f
							When run output -m=m -f
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_NAME_INVALID_RT
						End
						It "--formatting-character" outputUtilCreateHeaderFooterOptionalOptionFormattingCharacterInputInvalidMissing:formattingCharacter
							When run output -m=m --formatting-character
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_NAME_INVALID_RT
						End
					End
				End
			End
		End
	End
End

