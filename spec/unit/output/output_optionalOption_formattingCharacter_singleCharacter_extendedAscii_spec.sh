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
					# Note that the list of extended ASCII characters, as well as the names used to describe
					# them in the titles and tags, were pulled from www.ascii-code.com on 2026/09/28.
					# I saved the page via the Internet Archive's Way Back Machine. Access the saved
					# version here: https://web.archive.org/web/20260926191122/https://www.ascii-code.com/
					Describe "Extended ascii:" outputOutputOptionalOptionFormattingCharacterSingleCharacter:extendedAscii
						Describe "Euro:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:euro
							fChar="€"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiEuro:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiEuro:formattingCharacter
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Single low-9 quotation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:singleLow9QuotationMark
							fChar="‚"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSingleLow9QuotationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSingleLow9QuotationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter f with hook:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterFWithHook
							fChar="ƒ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterFWithHook:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterFWithHook:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Double low-9 quotation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:foubleLow9QuotationMark
							fChar="„"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDoulbeLow9QuotationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDoulbeLow9QuotationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Horizontal ellipsis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:horizontalEllipsis
							fChar="…"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiHorizontalEllipsis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiHorizontalEllipsis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Dagger:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:fagger
							fChar="†"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDagger:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDagger:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Double dagger:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:foubleDagger
							fChar="‡"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDoubleDagger:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDoubleDagger:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Modifier letter circumflex accent:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:modifierLetterCircumflexAccent
							fChar="ˆ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiModifierLetterCircumflexAccent:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiModifierLetterCircumflexAccent:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Per mille sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:perMilleSign
							fChar="‰"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPerMilleSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPerMilleSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter s with caron:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterSWithCaron
							fChar="Š"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterSWithCaron:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterSWithCaron:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Single left-pointing angle quotation:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:singleLeftPointingAngleQuotation
							fChar="‹"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSingleLeftPointingAngleQuotation:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSingleLeftPointingAngleQuotation:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital ligature oe:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLigatureOE
							fChar="Œ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLigatureOE:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLigatureOE:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter z with caron:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterZWithCaron
							fChar="Ž"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterZWithCaron:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterZWithCaron:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Left single quotation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:leftSingleQuotationMark
							fChar="‘"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLeftSingleQuotationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLeftSingleQuotationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Right single quotation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:rightSingleQuotationMark
							fChar="’"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRightSingleQuotationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRightSingleQuotationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Left double quotation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:leftDoubleQuotationMark
							fChar="“"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLeftDoubleQuotationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLeftDoubleQuotationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Right double quotation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:rightDoubleQuotationMark
							fChar="”"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRightDoubleQuotationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRightDoubleQuotationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Bullet:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:bullet
							fChar="•"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiBullet:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiBullet:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "En dash:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:enDash
							fChar="–"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiEnDash:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiEnDash:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Em dash:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:emDash
							fChar="—"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiEmDash:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiEmDash:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Small tilde:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:smallTilde
							fChar="˜"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSmallTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSmallTilde:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Trade mark sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:tradeMarkSign
							fChar="™"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiTradeMarkSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiTradeMarkSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter s with caron:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterSWithCaron
							fChar="š"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterSWithCaron:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterSWithCaron:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Single right-pointing angle quotation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:singleRightPointingAngleQuotationMark
							fChar="›"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSingleRightPointingAngleQuotationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSingleRightPointingAngleQuotationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small ligature oe:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLigatureOe
							fChar="œ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLigatureOe:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLigatureOe:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter z with caron:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterZWithCaron
							fChar="ž"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterZWithCaron:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterZWithCaron:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter y with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterYWithDiaeresis
							fChar="Ÿ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterYWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterYWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Non-breaking space:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:nonBreakingSpace
							fChar=" "

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiNonBreakingSpace:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiNonBreakingSpace:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Inverted exclamation mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:invertedExclamationMark
							fChar="¡"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiInvertedExclamationMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiInvertedExclamationMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Cent sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:centSign
							fChar="¢"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiCentSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiCentSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Pound sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:poundSign
							fChar="¤"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPoundSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPoundSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Currency sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:currencySign
							fChar="¤"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiCurrencySign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiCurrencySign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Yen sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:yenSign
							fChar="¥"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiYenSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiYenSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Pipe, broken vertical bar:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:pipeBrokenVerticalBar
							fChar="¦"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPipeBrokenVerticalBar:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPipeBrokenVerticalBar:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Section sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:sectionSign
							fChar="§"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSectionSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSectionSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Spacing diaeresis - umlaut:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:spacingDiaeresisUmlaut
							fChar="¨"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSpacingDiaeresisUmlaut:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSpacingDiaeresisUmlaut:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Copyright sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:copyrightSign
							fChar="©"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiCopyrightSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiCopyrightSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Feminine ordinal indicator:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:feminineOrdinalIndicator
							fChar="ª"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFeminineOrdinalIndicator:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFeminineOrdinalIndicator:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Left double angle quotes:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:leftDoubleAngleQuotes
							fChar="«"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLeftDoubleAngleQuotes:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLeftDoubleAngleQuotes:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Negation:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:negation
							fChar="¬"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiNegation:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiNegation:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Soft hyphen:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:softHyphen
							fChar="­"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSoftHyphen:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSoftHyphen:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Registered trade mark sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:registeredTradeMarkSign
							fChar="®"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRegisteredTradeMarkSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRegisteredTradeMarkSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Spacing macron - overline:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:spacingMacronOverline
							fChar="¯"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSpacingMacronOverline:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSpacingMacronOverline:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Degree sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:fegreeSign
							fChar="°"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDegreeSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDegreeSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Plus-or-minus sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:plusOrMinusSign
							fChar="±"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPlusOrMinusSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPlusOrMinusSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Superscript two - squared:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:superscriptTwoSquared
							fChar="²"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSuperscriptTwoSquared:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSuperscriptTwoSquared:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Superscript three - cubed:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:superscriptThreeCubed
							fChar="³"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSuperscriptThreeCubed:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSuperscriptThreeCubed:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Acute accent - spacing acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:acuteAccentSpacingAcute
							fChar="´"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiAcuteAccentSpacingAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiAcuteAccentSpacingAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Micro sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:microSign
							fChar="µ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMicroSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMicroSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Pilcrow sign - paragraph sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:pilcrowSignParagraphSign
							fChar="¶"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPilcrowSignParagraphSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiPilcrowSignParagraphSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Middle dot - georgian comma:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:middleDotGeorgianComma
							fChar="·"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMiddleDotGeorgianComma:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMiddleDotGeorgianComma:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Spacing cedilla:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:spacingCedilla
							fChar="¸"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSpacingCedilla:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSpacingCedilla:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Superscript one:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:superscriptOne
							fChar="¹"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSuperscriptOne:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiSuperscriptOne:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Masculine ordinal indicator:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:masculineOrdinalIndicator
							fChar="º"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMasculineOrdinalIndicator:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMasculineOrdinalIndicator:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Right double angle quotes:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:rightDoubleAngleQuotes
							fChar="»"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRightDoubleAngleQuotes:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiRightDoubleAngleQuotes:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Fraction one quarter:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:fractionOneQuarter
							fChar="¼"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFractionOneQuarter:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFractionOneQuarter:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Fraction one half:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:fractionOneHalf
							fChar="½"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFractionOneHalf:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFractionOneHalf:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Fraction three quarters:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:fractionThreeQuarters
							fChar="¾"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFractionThreeQuarters:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiFractionThreeQuarters:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Inverted question mark:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:invertedQuestionMark
							fChar="¿"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiInvertedQuestionMark:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiInvertedQuestionMark:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter a with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterAWithGrave
							fChar="À"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter a with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterAWithAcute
							fChar="Á"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter a with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterAWithCircumflex
							fChar="Â"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter a with tilde:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterAWithTilde
							fChar="Ã"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithTilde:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter a with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterAWithDiaeresis
							fChar="Ä"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter a with ring above:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterAWithRingAbove
							fChar="Å"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithRingAbove:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAWithRingAbove:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter ae:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterAE
							fChar="Æ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAE:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterAE:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter c with cedilla:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterCWithCedilla
							fChar="Ç"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterCWithCedilla:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterCWithCedilla:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter e with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterEWithGrave
							fChar="È"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter e with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterEWithAcute
							fChar="É"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter e with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterEWithCircumflex
							fChar="Ê"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter e with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterEWithDiaeresis
							fChar="Ë"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterEWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter i with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterIWithGrave
							fChar="Ì"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter i with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterIWithAcute
							fChar="Í"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter i with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterIWithCircumflex
							fChar="Î"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter i with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterIWithDiaeresis
							fChar="Ï"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterIWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter eth:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterETH
							fChar="Ð"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterETH:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterETH:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter n with tilde:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterNWithTilde
							fChar="Ñ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterNWithTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterNWithTilde:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter o with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterOWithGrave
							fChar="Ò"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter o with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterOWithAcute
							fChar="Ó"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter o with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterOWithCircumflex
							fChar="Ô"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter o with tilde:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterOWithTilde
							fChar="Õ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithTilde:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter o with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterOWithDiaeresis
							fChar="Ö"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Multiplication sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:multiplicationSign
							fChar="×"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMultiplicationSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiMultiplicationSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter o with slash:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterOWithSlash
							fChar="Ø"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithSlash:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterOWithSlash:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter u with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterUWithGrave
							fChar="Ù"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter u with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterUWithAcute
							fChar="Ú"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter u with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterUWithCircumflex
							fChar="Û"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter u with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterUWithDiaeresis
							fChar="Ü"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterUWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter y with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterYWithAcute
							fChar="Ý"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterYWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterYWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin capital letter thorn:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinCapitalLetterTHORN
							fChar="Þ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterTHORN:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinCapitalLetterTHORN:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter sharp s - ess-zed:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterSharpSEssZed
							fChar="ß"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterSharpSEssZed:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterSharpSEssZed:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter a with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterAWithGrave
							fChar="à"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter a with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterAWithAcute
							fChar="á"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter a with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterAWithCircumflex
							fChar="â"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter a with tilde:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterAWithTilde
							fChar="ã"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithTilde:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter a with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterAWithDiaeresis
							fChar="ä"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter a with ring above:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterAWithRingAbove
							fChar="å"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithRingAbove:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAWithRingAbove:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter ae:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterAe
							fChar="æ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAe:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterAe:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter c with cedilla:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterCWithCedilla
							fChar="ç"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterCWithCedilla:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterCWithCedilla:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter e with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterEWithGrave
							fChar="è"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter e with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterEWithAcute
							fChar="é"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter e with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterEWithCircumflex
							fChar="ê"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter e with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterEWithDiaeresis
							fChar="ë"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter i with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterIWithGrave
							fChar="ì"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter i with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterIWithAcute
							fChar="í"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter i with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterIWithCircumflex
							fChar="î"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter i with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterIWithDiaeresis
							fChar="ï"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterIWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter eth:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterEth
							fChar="ð"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEth:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterEth:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter n with tilde:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterNWithTilde
							fChar="ñ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterNWithTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterNWithTilde:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter o with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterOWithGrave
							fChar="ò"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter o with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterOWithAcute
							fChar="ó"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter o with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterOWithCircumflex
							fChar="ô"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter o with tilde:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterOWithTilde
							fChar="õ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithTilde:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithTilde:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter o with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterOWithDiaeresis
							fChar="ö"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Division sign:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:fivisionSign
							fChar="÷"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDivisionSign:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiDivisionSign:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter o with slash:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterOWithSlash
							fChar="ø"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithSlash:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterOWithSlash:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter u with grave:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterUWithGrave
							fChar="ù"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithGrave:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithGrave:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter u with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterUWithAcute
							fChar="ú"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter u with circumflex:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterUWithCircumflex
							fChar="ü"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithCircumflex:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithCircumflex:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter u with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterUWithDiaeresis
							fChar="ü"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterUWithDiaeresis:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter y with acute:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterYWithAcute
							fChar="ý"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterYWithAcute:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterYWithAcute:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter thorn:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterThorn
							fChar="þ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterThorn:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterThorn:febug
								When run output -m=m --pp --formatting-character="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
						End
						Describe "Latin small letter y with diaeresis:" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAscii:latinSmallLetterYWithDiaeresis
							fChar="ÿ"

							It "-f" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterYWithDiaeresis:f
								When run output -m=m --pp -f="$fChar"
								The stderr should not be present
								The lines of stdout should equal 1
								The stdout line 1 should equal "$fChar m $fChar"
								The status should be success
							End
							It "--formatting-character" outputOutputOptionalOptionFormattingCharacterSingleCharacterExtendedAsciiLatinSmallLetterYWithDiaeresis:febug
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

