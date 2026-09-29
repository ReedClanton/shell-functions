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
		BeforeAll 'sourceCut'

		Describe "Optional option:" outputOutput:optionalOption
			Describe "Line length:" outputOutputOptionalOption:lineLength
				Describe "Input invalid:" outputOutputOptionalOptionLineLength:inputInvalid
					Describe "-l:" outputOutputOptionalOptionLineLengthInputInvalid:l
						It "Blank" outputOutputOptionalOptionLineLengthInputInvalidL:blank
							When run output -m=m -l=""
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "Null" outputOutputOptionalOptionLineLengthInputInvalidL:null
							When run output -m=m -l=
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "Missing" outputOutputOptionalOptionLineLengthInputInvalidL:missing
							When run output -m=m -l
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_NAME_INVALID_RT
						End
						It "Float" outputOutputOptionalOptionLineLengthInputInvalidL:float
							When run output -m=m -l="1.1"
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "'+'" outputOutputOptionalOptionLineLengthInputInvalidL:plus
							When run output -m=m -l="+50"
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
					End
					Describe "--line-length:" outputOutputOptionalOptionLineLengthInputInvalid:lineLength
						It "Blank" outputOutputOptionalOptionLineLengthInputInvalidLineLength:blank
							When run output -m=m --line-length=""
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "Null" outputOutputOptionalOptionLineLengthInputInvalidLineLength:null
							When run output -m=m --line-length=
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "Missing" outputOutputOptionalOptionLineLengthInputInvalidLineLength:missing
							When run output -m=m --line-length
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_NAME_INVALID_RT
						End
						It "Float" outputOutputOptionalOptionLineLengthInputInvalidLineLength:float
							When run output -m=m --line-length="1.1"
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
						It "'+'" outputOutputOptionalOptionLineLengthInputInvalidLineLength:plus
							When run output -m=m --line-length="+50"
							The stdout should not be present
							The stderr line 1 should start with "ERROR output(): "
							The stderr should include "$OUTPUT_DOC"
							The status should equal $OPTION_VALUE_INVALID_RT
						End
					End
				End
			End
		End
	End
End

