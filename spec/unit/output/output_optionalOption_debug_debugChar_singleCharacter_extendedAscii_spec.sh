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
						# Note that the list of extended ASCII characters, as well as the names used to describe
						# them in the titles and tags, were pulled from www.ascii-code.com on 2026/09/28.
						# I saved the page via the Internet Archive's Way Back Machine. Access the saved
						# version here: https://web.archive.org/web/20260926191122/https://www.ascii-code.com/
						Describe "Extended ascii:" outputOutputOptionalOptionDebugDebugCharSingleCharacter:extendedAscii
							debugChar="€"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Euro:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:euro
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiEuro:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiEuro:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‚"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Single low-9 quotation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:singleLow9QuotationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSingleLow9QuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSingleLow9QuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ƒ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter f with hook:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterFWithHook
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterFWithHook:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterFWithHook:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="„"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Double low-9 quotation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:doubleLow9QuotationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDoulbeLow9QuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDoulbeLow9QuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="…"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Horizontal ellipsis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:horizontalEllipsis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiHorizontalEllipsis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiHorizontalEllipsis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="†"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Dagger:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:dagger
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDagger:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDagger:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‡"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Double dagger:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:doubleDagger
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDoubleDagger:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDoubleDagger:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ˆ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Modifier letter circumflex accent:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:modifierLetterCircumflexAccent
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiModifierLetterCircumflexAccent:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiModifierLetterCircumflexAccent:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‰"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Per mille sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:perMilleSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPerMilleSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPerMilleSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Š"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter s with caron:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterSWithCaron
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterSWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterSWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‹"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Single left-pointing angle quotation:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:singleLeftPointingAngleQuotation
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSingleLeftPointingAngleQuotation:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSingleLeftPointingAngleQuotation:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Œ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital ligature oe:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLigatureOE
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLigatureOE:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLigatureOE:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ž"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter z with caron:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterZWithCaron
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterZWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterZWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="‘"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Left single quotation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:leftSingleQuotationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLeftSingleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLeftSingleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="’"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Right single quotation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:rightSingleQuotationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRightSingleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRightSingleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="“"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Left double quotation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:leftDoubleQuotationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLeftDoubleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLeftDoubleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="”"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Right double quotation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:rightDoubleQuotationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRightDoubleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRightDoubleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="•"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Bullet:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:bullet
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiBullet:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiBullet:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="–"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "En dash:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:enDash
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiEnDash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiEnDash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="—"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Em dash:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:emDash
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiEmDash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiEmDash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="˜"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Small tilde:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:smallTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSmallTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSmallTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="™"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Trade mark sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:tradeMarkSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiTradeMarkSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiTradeMarkSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="š"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter s with caron:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterSWithCaron
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterSWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterSWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="›"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Single right-pointing angle quotation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:singleRightPointingAngleQuotationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSingleRightPointingAngleQuotationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSingleRightPointingAngleQuotationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="œ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small ligature oe:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLigatureOe
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLigatureOe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLigatureOe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ž"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter z with caron:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterZWithCaron
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterZWithCaron:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterZWithCaron:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ÿ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter y with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterYWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterYWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterYWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar=" "
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Non-breaking space:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:nonBreakingSpace
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiNonBreakingSpace:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiNonBreakingSpace:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¡"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Inverted exclamation mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:invertedExclamationMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiInvertedExclamationMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiInvertedExclamationMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¢"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Cent sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:centSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiCentSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiCentSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="£"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Pound sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:poundSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPoundSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPoundSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¤"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Currency sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:currencySign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiCurrencySign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiCurrencySign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¥"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Yen sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:yenSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiYenSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiYenSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¦"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Pipe, broken vertical bar:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:pipeBrokenVerticalBar
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPipeBrokenVerticalBar:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPipeBrokenVerticalBar:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="§"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Section sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:sectionSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSectionSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSectionSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¨"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Spacing diaeresis - umlaut:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:spacingDiaeresisUmlaut
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSpacingDiaeresisUmlaut:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSpacingDiaeresisUmlaut:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="©"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Copyright sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:copyrightSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiCopyrightSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiCopyrightSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ª"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Feminine ordinal indicator:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:feminineOrdinalIndicator
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFeminineOrdinalIndicator:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFeminineOrdinalIndicator:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="«"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Left double angle quotes:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:leftDoubleAngleQuotes
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLeftDoubleAngleQuotes:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLeftDoubleAngleQuotes:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¬"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Negation:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:negation
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiNegation:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiNegation:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="­"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Soft hyphen:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:softHyphen
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSoftHyphen:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSoftHyphen:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="®"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Registered trade mark sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:registeredTradeMarkSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRegisteredTradeMarkSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRegisteredTradeMarkSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¯"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Spacing macron - overline:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:spacingMacronOverline
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSpacingMacronOverline:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSpacingMacronOverline:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="°"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Degree sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:degreeSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDegreeSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDegreeSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="±"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Plus-or-minus sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:plusOrMinusSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPlusOrMinusSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPlusOrMinusSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="²"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Superscript two - squared:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:superscriptTwoSquared
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSuperscriptTwoSquared:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSuperscriptTwoSquared:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="³"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Superscript three - cubed:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:superscriptThreeCubed
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSuperscriptThreeCubed:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSuperscriptThreeCubed:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="´"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Acute accent - spacing acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:acuteAccentSpacingAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiAcuteAccentSpacingAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiAcuteAccentSpacingAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="µ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Micro sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:microSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMicroSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMicroSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¶"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Pilcrow sign - paragraph sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:pilcrowSignParagraphSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPilcrowSignParagraphSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiPilcrowSignParagraphSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="·"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Middle dot - georgian comma:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:middleDotGeorgianComma
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMiddleDotGeorgianComma:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMiddleDotGeorgianComma:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¸"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Spacing cedilla:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:spacingCedilla
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSpacingCedilla:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSpacingCedilla:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¹"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Superscript one:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:superscriptOne
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSuperscriptOne:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiSuperscriptOne:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="º"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Masculine ordinal indicator:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:masculineOrdinalIndicator
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMasculineOrdinalIndicator:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMasculineOrdinalIndicator:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="»"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Right double angle quotes:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:rightDoubleAngleQuotes
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRightDoubleAngleQuotes:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiRightDoubleAngleQuotes:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¼"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Fraction one quarter:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:fractionOneQuarter
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFractionOneQuarter:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFractionOneQuarter:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="½"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Fraction one half:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:fractionOneHalf
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFractionOneHalf:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFractionOneHalf:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¾"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Fraction three quarters:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:fractionThreeQuarters
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFractionThreeQuarters:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiFractionThreeQuarters:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="¿"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Inverted question mark:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:invertedQuestionMark
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiInvertedQuestionMark:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiInvertedQuestionMark:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="À"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterAWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Á"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterAWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Â"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterAWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ã"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with tilde:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterAWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ä"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterAWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Å"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter a with ring above:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterAWithRingAbove
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithRingAbove:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAWithRingAbove:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Æ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter ae:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterAE
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAE:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterAE:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ç"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter c with cedilla:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterCWithCedilla
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterCWithCedilla:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterCWithCedilla:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="È"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterEWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="É"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterEWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ê"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterEWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ë"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter e with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterEWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterEWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ì"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterIWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Í"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterIWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Î"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterIWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ï"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter i with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterIWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterIWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ð"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter eth:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterETH
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterETH:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterETH:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ñ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter n with tilde:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterNWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterNWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterNWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ò"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterOWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ó"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterOWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ô"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterOWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Õ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with tilde:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterOWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ö"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterOWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="×"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Multiplication sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:multiplicationSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMultiplicationSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiMultiplicationSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ø"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter o with slash:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterOWithSlash
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithSlash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterOWithSlash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ù"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterUWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ú"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterUWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Û"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterUWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ü"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter u with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterUWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterUWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Ý"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter y with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterYWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterYWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterYWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="Þ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin capital letter thorn:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinCapitalLetterTHORN
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterTHORN:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinCapitalLetterTHORN:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ß"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter sharp s - ess-zed:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterSharpSEssZed
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterSharpSEssZed:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterSharpSEssZed:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="à"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterAWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="á"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterAWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="â"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterAWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ã"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with tilde:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterAWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ä"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterAWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="å"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter a with ring above:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterAWithRingAbove
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithRingAbove:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAWithRingAbove:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="æ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter ae:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterAe
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAe:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterAe:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ç"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter c with cedilla:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterCWithCedilla
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterCWithCedilla:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterCWithCedilla:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="è"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterEWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="é"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterEWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ê"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterEWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ë"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter e with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterEWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ì"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterIWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="í"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterIWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="î"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterIWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ï"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter i with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterIWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterIWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ð"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter eth:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterEth
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEth:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterEth:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ñ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter n with tilde:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterNWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterNWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterNWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ò"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterOWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ó"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterOWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ô"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterOWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="õ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with tilde:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterOWithTilde
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithTilde:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithTilde:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ö"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterOWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="÷"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Division sign:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:divisionSign
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDivisionSign:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiDivisionSign:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ø"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter o with slash:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterOWithSlash
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithSlash:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterOWithSlash:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ù"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with grave:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterUWithGrave
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithGrave:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithGrave:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ú"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterUWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="û"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with circumflex:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterUWithCircumflex
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithCircumflex:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithCircumflex:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ü"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter u with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterUWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterUWithDiaeresis:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ý"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter y with acute:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterYWithAcute
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterYWithAcute:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterYWithAcute:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="þ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter thorn:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterThorn
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterThorn:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterThorn:debug
									When run output -m=m --pp --debug
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
							End

							debugChar="ÿ"
							setDebugChar() { DEBUG_CHAR="$debugChar"; }
							BeforeEach "setDebugChar"

							Describe "Latin small letter y with diaeresis:" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAscii:latinSmallLetterYWithDiaeresis
								It "-d" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterYWithDiaeresis:d
									When run output -m=m --pp -d
									The stderr should not be present
									The lines of stdout should equal 1
									The stdout line 1 should equal "$debugChar m $debugChar"
									The status should be success
								End
								It "--debug" outputOutputOptionalOptionDebugDebugCharSingleCharacterExtendedAsciiLatinSmallLetterYWithDiaeresis:debug
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

