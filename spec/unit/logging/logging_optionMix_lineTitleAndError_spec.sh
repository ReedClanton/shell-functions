# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% FULL_TITLE:1
readonly FULL_TITLE
% LINE_TITLE:2
readonly LINE_TITLE
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
			Describe "--line-title and error:" loggingLoggingUtilOptionMix:lineTitleAndError
				output() {
					# Track that required option(s) are provided.
					lvlGiven=false
					titleGiven=false
					# Processed provided option(s).
					for fullArg in "$@"; do
						case $fullArg in
							--error | -e)
								lvlGiven=true
								;;
							--pp | --pre-post-fix)
								titleGiven=true
								;;
							*) ;;
						esac
					done
					# Ensure required option(s) were provided.
					if $lvlGiven && $titleGiven; then
						echo "# m #"
						return 0
					fi
					# Required option(s) not provided.
					return 3
				}

				It "--error" loggingLoggingUtilOptionMixLineTitleAndError:error
					When run logging -m=m --line-title --error
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR:	# m #"
					The status should be success
				End
				It "-e" loggingLoggingUtilOptionMixLineTitleAndError:e
					When run logging -m=m --line-title -e
					The stderr should not be present
					The lines of stdout should equal 1
					The stdout line 1 should equal "ERROR:	# m #"
					The status should be success
				End
			End
		End
	End
End

