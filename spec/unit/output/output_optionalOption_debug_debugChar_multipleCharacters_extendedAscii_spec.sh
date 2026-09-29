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
					Describe "Multiple characters:" outputOutputOptionalOptionDebugDebugChar:multipleCharacters
						# Note that the list of extended ASCII characters, as well as the names used to describe
						# them in the titles and tags, were pulled from www.ascii-code.com on 2026/09/28.
						# I saved the page via the Internet Archive's Way Back Machine. Access the saved
						# version here: https://web.archive.org/web/20260926191122/https://www.ascii-code.com/
						Describe "Extended ascii:" outputOutputOptionalOptionDebugDebugCharMultipleCharacters:extendedAscii
							debugChar="€€"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Euro:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:euro
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiEuro:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiEuro:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‚‚"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Single low-9 quotation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:singleLow9QuotationMark
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSingleLow9QuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSingleLow9QuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ƒƒ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter f with hook:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterFWithHook
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterFWithHook:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterFWithHook:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="„„"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Double low-9 quotation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:doubleLow9QuotationMark
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDoubleLow9QuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDoubleLow9QuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="……"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Horizontal ellipsis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:horizontalEllipsis
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiHorizontalEllipsis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiHorizontalEllipsis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="††"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Dagger:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:dagger
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDagger:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDagger:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‡‡"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Double dagger:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:doubleDagger
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDoubleDagger:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDoubleDagger:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ˆˆ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Modifier letter circumflex accent:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:modifierLetterCircumflexAccent
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiModifierLetterCircumflexAccent:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiModifierLetterCircumflexAccent:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‰‰"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Per mille sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:perMilleSign
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPerMilleSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPerMilleSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ŠŠ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter s with caron:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterSWithCaron
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterSWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterSWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‹‹"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Single left-pointing angle quotation:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:singleLeftPointingAngleQuotation
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSingleLeftPointingAngleQuotation:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSingleLeftPointingAngleQuotation:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ŒŒ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital ligature oe:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLigatureOe
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLigatureOe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLigatureOe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ŽŽ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter z with caron:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterZWithCaron
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterZWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterZWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‘‘"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Left single quotation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:leftSingleQuotationMark
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLeftSingleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLeftSingleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="’’"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Right single quotation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:rightSingleQuotationMark
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRightSingleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRightSingleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="““"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Left double quotation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:leftDoubleQuotationMark
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLeftDoubleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLeftDoubleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="””"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Right double quotation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:rightDoubleQuotationMark
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRightDoubleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRightDoubleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="••"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Bullet:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:bullet
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiBullet:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiBullet:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="––"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "En dash:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:enDash
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiEnDash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiEnDash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="——"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Em dash:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:emDash
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiEmDash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiEmDash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="˜˜"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Small tilde:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:smallTilde
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSmallTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSmallTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="™™"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Trade mark sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:tradeMarkSign
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiTradeMarkSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiTradeMarkSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="šš"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter s with caron:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterSWithCaron
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterSWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterSWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="››"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Single right-pointing angle quotation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:singleRightPointingAngleQuotationMark
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSingleRightPointingAngleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSingleRightPointingAngleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="œœ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small ligature oe:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLigatureOe
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLigatureOe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLigatureOe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="žž"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter z with caron:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterZWithCaron
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterZWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterZWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ŸŸ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter y with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterYWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterYWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterYWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="  "
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Non-breaking space:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:nonBreakingSpace
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiNonBreakingSpace:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiNonBreakingSpace:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¡¡"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Inverted exclamation mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:invertedExclamationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiInvertedExclamationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiInvertedExclamationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¢¢"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Cent sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:centSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiCentSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiCentSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="££"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Pound sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:poundSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPoundSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPoundSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¤¤"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Currency sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:currencySign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiCurrencySign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiCurrencySign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¥¥"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Yen sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:yenSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiYenSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiYenSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¦¦"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Pipe, broken vertical bar:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:pipeBrokenVerticalBar
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPipeBrokenVerticalBar:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPipeBrokenVerticalBar:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="§§"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Section sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:sectionSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSectionSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSectionSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¨¨"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Spacing diaeresis - umlaut:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:spacingDiaeresisUmlaut
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSpacingDiaeresisUmlaut:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSpacingDiaeresisUmlaut:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="©©"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Copyright sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:copyrightSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiCopyrightSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiCopyrightSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ªª"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Feminine ordinal indicator:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:feminineOrdinalIndicator
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFeminineOrdinalIndicator:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFeminineOrdinalIndicator:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="««"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Left double angle quotes:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:leftDoubleAngleQuotes
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLeftDoubleAngleQuotes:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLeftDoubleAngleQuotes:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¬¬"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Negation:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:negation
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiNegation:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiNegation:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="­­"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Soft hyphen:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:softHyphen
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSoftHyphen:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSoftHyphen:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="®®"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Registered trade mark sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:registeredTradeMarkSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRegisteredTradeMarkSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRegisteredTradeMarkSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¯¯"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Spacing macron - overline:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:spacingMacronOverline
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSpacingMacronOverline:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSpacingMacronOverline:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="°°"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Degree sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:degreeSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDegreeSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDegreeSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="±±"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Plus-or-minus sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:plusOrMinusSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPlusOrMinusSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPlusOrMinusSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="²²"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Superscript two - squared:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:superscriptTwoSquared
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSuperscriptTwoSquared:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSuperscriptTwoSquared:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="³³"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Superscript three - cubed:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:superscriptThreeCubed
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSuperscriptThreeCubed:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSuperscriptThreeCubed:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="´´"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Acute accent - spacing acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:acuteAccentSpacingAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiAcuteAccentSpacingAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiAcuteAccentSpacingAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="µµ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Micro sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:microSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMicroSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMicroSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¶¶"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Pilcrow sign - paragraph sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:pilcrowSignParagraphSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPilcrowSignParagraphSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiPilcrowSignParagraphSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="··"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Middle dot - georgian comma:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:middleDotGeorgianComma
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMiddleDotGeorgianComma:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMiddleDotGeorgianComma:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¸¸"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Spacing cedilla:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:spacingCedilla
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSpacingCedilla:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSpacingCedilla:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¹¹"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Superscript one:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:superscriptOne
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSuperscriptOne:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiSuperscriptOne:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ºº"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Masculine ordinal indicator:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:masculineOrdinalIndicator
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMasculineOrdinalIndicator:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMasculineOrdinalIndicator:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="»»"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Right double angle quotes:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:rightDoubleAngleQuotes
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRightDoubleAngleQuotes:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiRightDoubleAngleQuotes:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¼¼"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Fraction one quarter:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:fractionOneQuarter
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFractionOneQuarter:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFractionOneQuarter:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="½½"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Fraction one half:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:fractionOneHalf
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFractionOneHalf:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFractionOneHalf:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¾¾"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Fraction three quarters:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:fractionThreeQuarters
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFractionThreeQuarters:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiFractionThreeQuarters:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¿¿"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Inverted question mark:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:invertedQuestionMark
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiInvertedQuestionMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiInvertedQuestionMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÀÀ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterAWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÁÁ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterAWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÂÂ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterAWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÃÃ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with tilde:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterAWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÄÄ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterAWithDiaeresis
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÅÅ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with ring above:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterAWithRingAbove
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithRingAbove:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAWithRingAbove:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÆÆ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter ae:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterAe
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterAe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÇÇ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter c with cedilla:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterCWithCedilla
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterCWithCedilla:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterCWithCedilla:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÈÈ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterEWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÉÉ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterEWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÊÊ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterEWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ËË"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterEWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÌÌ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterIWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÍÍ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterIWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÎÎ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterIWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÏÏ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterIWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterIWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÐÐ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter eth:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterEth
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEth:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterEth:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÑÑ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter n with tilde:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterNWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterNWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterNWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÒÒ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterOWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÓÓ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterOWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÔÔ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterOWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÕÕ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with tilde:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterOWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÖÖ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterOWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="××"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Multiplication sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:multiplicationSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMultiplicationSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiMultiplicationSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ØØ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with slash:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterOWithSlash
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithSlash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterOWithSlash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÙÙ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterUWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÚÚ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterUWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÛÛ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterUWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÜÜ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterUWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterUWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÝÝ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter y with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterYWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterYWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterYWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÞÞ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter thorn:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinCapitalLetterThorn
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterThorn:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinCapitalLetterThorn:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ßß"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter sharp s - ess-zed:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterSharpSEssZed
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterSharpSEssZed:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterSharpSEssZed:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="àà"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterAWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="áá"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterAWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ââ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterAWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ãã"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with tilde:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterAWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ää"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterAWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="åå"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with ring above:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterAWithRingAbove
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithRingAbove:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAWithRingAbove:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ææ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter ae:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterAe
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterAe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="çç"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter c with cedilla:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterCWithCedilla
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterCWithCedilla:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterCWithCedilla:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="èè"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterEWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="éé"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterEWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="êê"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterEWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ëë"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterEWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ìì"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterIWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="íí"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterIWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="îî"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterIWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ïï"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterIWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterIWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ðð"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter eth:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterEth
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEth:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterEth:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ññ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter n with tilde:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterNWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterNWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterNWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="òò"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterOWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="óó"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterOWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ôô"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterOWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="õõ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with tilde:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterOWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="öö"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterOWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="÷÷"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Division sign:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:divisionSign
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDivisionSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiDivisionSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="øø"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with slash:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterOWithSlash
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithSlash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterOWithSlash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ùù"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with grave:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterUWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="úú"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterUWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ûû"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with circumflex:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterUWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="üü"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterUWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterUWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ýý"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter y with acute:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterYWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterYWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterYWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="þþ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter thorn:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterThorn
                                Skip if "shell's \${#var} counts bytes, not characters. Will be resolved by #27" lacksMultibyteLength
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterThorn:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterThorn:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÿÿ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter y with diaeresis:" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAscii:latinSmallLetterYWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterYWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharMultipleCharactersExtendedAsciiLatinSmallLetterYWithDiaeresis:debug
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

