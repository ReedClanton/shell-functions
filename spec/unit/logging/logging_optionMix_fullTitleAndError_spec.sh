# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% FULL_TITLE:1
readonly FULL_TITLE
% ERROR:1
readonly ERROR
% WARN:2
readonly WARN
% INFO:3
readonly INFO
% DEBUG:4
readonly DEBUG
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$ERROR

Describe "Logging:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Option mix:" loggingLogging:optionMix
			Describe "--full-title and error:" loggingLoggingUtilOptionMix:fullTitleAndError
				output() {
					# Track that required option(s) are provided.
					lvlGiven=false
					titleGiven=false
					headerGiven=false
					preGiven=false
					# Processed provided option(s).
					for fullArg in "$@"; do
						case $fullArg in
							--error | -e)
								lvlGiven=true
								;;
							-p | --pretty)
								titleGiven=true
								;;
							--header-footer)
								headerGiven=true
								;;
							--pp | --pre-post-fix)
								preGiven=true
								;;
							*) ;;
						esac
					done
					# Ensure required option(s) were provided.
					if $lvlGiven && ($titleGiven || ($headerGiven && $preGiven)); then
						echo " ###"
						echo "# m #"
						echo " ###"
						return 0
					fi
					# Required option(s) not provided.
					return 3
				}

				It "--error" loggingLoggingUtilOptionMixFullTitleAndError:error
					When run logging -m=m --full-title --error
					The stderr should not be present
					The lines of stdout should equal 4
					The stdout line 1 should equal "ERROR:	"
					The stdout line 2 should equal " ###"
					The stdout line 3 should equal "# m #"
					The stdout line 4 should equal " ###"
					The status should be success
				End
				It "-e" loggingLoggingUtilOptionMixFullTitleAndError:e
					When run logging -m=m --full-title -e
					The stderr should not be present
					The lines of stdout should equal 4
					The stdout line 1 should equal "ERROR:	"
					The stdout line 2 should equal " ###"
					The stdout line 3 should equal "# m #"
					The stdout line 4 should equal " ###"
					The status should be success
				End
			End
		End
	End
End

