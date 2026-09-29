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
			Describe "--indent:" outputOutputOptionalOption:indent
				Describe "Input invalid:" outputOutputOptionalOptionIndent:inputInvalid
					It "Blank" outputOutputOptionalOptionIndentInputInvalid:blank
						When run output -m="m" --indent=""
						The stdout should not be present
						The stderr line 1 should start with "ERROR output(): "
						The stderr should include "$OUTPUT_DOC"
						The status should equal $OPTION_VALUE_INVALID_RT
					End
					It "Null" outputOutputOptionalOptionIndentInputInvalid:null
						When run output -m="m" --indent=
						The stdout should not be present
						The stderr line 1 should start with "ERROR output(): "
						The stderr should include "$OUTPUT_DOC"
						The status should equal $OPTION_VALUE_INVALID_RT
					End
					It "Missing" outputOutputOptionalOptionIndentInputInvalid:missing
						When run output -m="m" --indent
						The stdout should not be present
						The stderr line 1 should start with "ERROR output(): "
						The stderr should include "$OUTPUT_DOC"
						The status should equal $OPTION_NAME_INVALID_RT
					End
					It "Float" outputOutputOptionalOptionIndentInputInvalid:float
						When run output -m="m" --indent="1.1"
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

