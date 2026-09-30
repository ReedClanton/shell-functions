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
			Describe "Warn:" outputOutputOptionalOption:warn
				It "-w" outputOutputOptionalOptionWarn:w
					When run output -m=m --pp -w
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "* m *"
					The status should be success
				End
				It "--warn" outputOutputOptionalOptionWarn:warn
					When run output -m=m --pp --warn
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "* m *"
					The status should be success
				End
			End
		End
	End
End

