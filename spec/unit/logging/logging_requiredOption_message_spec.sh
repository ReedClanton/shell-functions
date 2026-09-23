# Setup required environment variable(s).
% NO_TITLE:0
readonly NO_TITLE
% TRACE:5
readonly TRACE
% SHELL_LOG_LEVEL:$TRACE

Describe "Logging:" logging
	Describe "logging():" logging:logging
		# Track path to file that contains CUT.
		cutPath=$PWD/logging/logging.sh
		# Source CUT function file so function may be called directly.
		sourceCut() { . $cutPath; }
		BeforeAll 'sourceCut'
		# Mock out.
		verifyInputProvided() { :; }

		Describe "Required option:" loggingLogging:requiredOption
			Describe "Message:" loggingLoggingRequiredOption:message
				Describe "Input single line:" loggingLoggingRequiredOptionMessage:inputSingleLine
					Describe "-m:" loggingLoggingRequiredOptionMessageInputSingleLine:m
						It "Alphanumeric" loggingLoggingRequiredOptionMessageInputSingleLineM:alphanumeric
							When run logging -m="mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	mes6sag3"
							The status should be success
						End
						It "Sentence" loggingLoggingRequiredOptionMessageInputSingleLineM:sentence
							When run logging -m="mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The status should be success
						End
						It "Blank" loggingLoggingRequiredOptionMessageInputSingleLineM:blank
							When run logging -m=""
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	"
							The status should be success
						End
						It "Null" loggingLoggingRequiredOptionMessageInputSingleLineM:null
							When run logging -m=
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	"
							The status should be success
						End
					End
					Describe "--msg:" loggingLoggingRequiredOptionMessageInputSingleLine:msg
						It "Alphanumeric" loggingLoggingRequiredOptionMessageInputSingleLineMsg:alphanumeric
							When run logging --msg="mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	mes6sag3"
							The status should be success
						End
						It "Sentence" loggingLoggingRequiredOptionMessageInputSingleLineMsg:sentence
							When run logging --msg="mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The status should be success
						End
						It "Blank" loggingLoggingRequiredOptionMessageInputSingleLineMsg:blank
							When run logging --msg=""
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	"
							The status should be success
						End
						It "Null" loggingLoggingRequiredOptionMessageInputSingleLineMsg:null
							When run logging --msg=
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	"
							The status should be success
						End
					End
				End
				Describe "Input multiple lines, single message:" loggingLoggingRequiredOptionMessage:inputMultipleLinesSingleMessage
					Describe "-m:" loggingLoggingRequiredOptionMessageInputMultipleLinesSingleMessage:m
						It "Sentence" loggingLoggingRequiredOptionMessageInputMultipleLinesSingleMessageM:sentence
							When run logging -m="mes6sag1 mes6sag1 mes6sag1\nmes6sag2 mes6sag2 mes6sag2"
							The stderr should not be present
							The lines of stdout should equal 2
							The stdout line 1 should equal "TRACE:	mes6sag1 mes6sag1 mes6sag1"
							The stdout line 2 should equal "mes6sag2 mes6sag2 mes6sag2"
							The status should be success
						End
						It "Blank" loggingLoggingRequiredOptionMessageInputMultipleLinesSingleMessageM:blank
							When run logging -m="\n\n\n"
							The stderr should not be present
							The stdout line 1 should equal "TRACE:	"
							The stdout line 2 should be blank
							The stdout line 3 should be blank
							The stdout line 4 should be blank
							The status should be success
							Skip "until I figure out how to get shellspec to see blank lines (CUT works, test doesn't)."
							The lines of stdout should equal 4
						End
					End
					Describe "--msg:" loggingLoggingRequiredOptionMessageInputMultipleLinesSingleMessage:msg
						It "Sentence" loggingLoggingRequiredOptionMessageInputMultipleLinesSingleMessageMsg:sentence
							When run logging --msg="mes6sag1 mes6sag1 mes6sag1\nmes6sag2 mes6sag2 mes6sag2"
							The stderr should not be present
							The lines of stdout should equal 2
							The stdout line 1 should equal "TRACE:	mes6sag1 mes6sag1 mes6sag1"
							The stdout line 2 should equal "mes6sag2 mes6sag2 mes6sag2"
							The status should be success
						End
						It "Blank" loggingLoggingRequiredOptionMessageInputMultipleLinesSingleMessageMsg:blank
							When run logging --msg="\n\n\n\n"
							The stderr should not be present
							The stdout line 1 should equal "TRACE:	"
							The stdout line 2 should be blank
							The stdout line 3 should be blank
							The stdout line 4 should be blank
							The stdout line 5 should be blank
							The status should be success
							Skip "until I figure out how to get shellspec to see blank lines (CUT works, test doesn't)."
							The lines of stdout should equal 5
						End
					End
				End
				Describe "Input multiple lines, multiple messages:" loggingLoggingRequiredOptionMessage:inputMultipleLinesMultipleMessages
					Describe "-m:" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessages:m
						It "One line per message" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesM:oneLinePerMessage
							When run logging -m="mes6sag3 mes6sag3" -m="mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 2
							The stdout line 1 should equal "TRACE:	mes6sag3 mes6sag3"
							The stdout line 2 should equal "mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The status should be success
						End
						It "Multiple lines per message" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesM:multipleLinesPerMessage
							When run logging -m="mes6sag3\nmes6sag3" -m="mes6sag3\nmes6sag3 mes6sag3 mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 4
							The stdout line 1 should equal "TRACE:	mes6sag3"
							The stdout line 2 should equal "mes6sag3"
							The stdout line 3 should equal "mes6sag3"
							The stdout line 4 should equal "mes6sag3 mes6sag3 mes6sag3"
							The status should be success
						End
						It "Blank" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesM:blank
							When run logging -m="\n\n" -m="\n\n\n\n\n"
							The stderr should not be present
							The stdout line 1 should equal "TRACE:	"
							The stdout line 2 should be blank
							The stdout line 3 should be blank
							The stdout line 4 should be blank
							The stdout line 5 should be blank
							The stdout line 6 should be blank
							The status should be success
							Skip "until I figure out how to get shellspec to see blank lines (CUT works, test doesn't)."
							The lines of stdout should equal 6
						End
						It "Null" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesM:null
							When run logging -m= -m= -m= -m= -m= -m= -m=
							The stderr should not be present
							The stdout line 1 should equal "TRACE:	"
							The stdout line 2 should be blank
							The stdout line 3 should be blank
							The stdout line 4 should be blank
							The stdout line 5 should be blank
							The stdout line 6 should be blank
							The stdout line 7 should be blank
							The status should be success
							Skip "until I figure out how to get shellspec to see blank lines (CUT works, test doesn't)."
							The lines of stdout should equal 7
						End
					End
					Describe "--msg:" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessages:msg
						It "One line per message" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesMsg:oneLinePerMessage
							When run logging --msg="mes6sag3 mes6sag3" --msg="mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 2
							The stdout line 1 should equal "TRACE:	mes6sag3 mes6sag3"
							The stdout line 2 should equal "mes6sag3 mes6sag3 mes6sag3 mes6sag3"
							The status should be success
						End
						It "Multiple lines per message" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesMsg:multipleLinesPerMessage
							When run logging --msg="mes6sag3\nmes6sag3" --msg="mes6sag3\nmes6sag3 mes6sag3 mes6sag3"
							The stderr should not be present
							The lines of stdout should equal 4
							The stdout line 1 should equal "TRACE:	mes6sag3"
							The stdout line 2 should equal "mes6sag3"
							The stdout line 3 should equal "mes6sag3"
							The stdout line 4 should equal "mes6sag3 mes6sag3 mes6sag3"
							The status should be success
						End
						It "Blank" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesMsg:blank
							When run logging --msg="\n\n" --msg="\n\n\n" --msg=""
							The stderr should not be present
							The stdout line 1 should equal "TRACE:	"
							The stdout line 2 should be blank
							The stdout line 3 should be blank
							The stdout line 4 should be blank
							The stdout line 5 should be blank
							The stdout line 6 should be blank
							The stdout line 7 should be blank
							The stdout line 8 should be blank
							The status should be success
							Skip "until I figure out how to get shellspec to see blank lines (CUT works, test doesn't)."
							The lines of stdout should equal 8
						End
						It "Null" loggingLoggingRequiredOptionMessageInputMultipleLinesMultipleMessagesMsg:null
							When run logging --msg= --msg= --msg= --msg= --msg= --msg= --msg= --msg= --msg=
							The stderr should not be present
							The stdout line 1 should equal "TRACE:	"
							The stdout line 2 should be blank
							The stdout line 3 should be blank
							The stdout line 4 should be blank
							The stdout line 5 should be blank
							The stdout line 6 should be blank
							The stdout line 7 should be blank
							The stdout line 8 should be blank
							The status should be success
							Skip "until I figure out how to get shellspec to see blank lines (CUT works, test doesn't)."
							The lines of stdout should equal 9
						End
					End
				End
				Describe "Input tabs:" loggingLoggingRequiredOptionMessage:inputTabs
					Describe "-m:" loggingLoggingRequiredOptionMessageInputTabs:m
						It "Sentence" loggingLoggingRequiredOptionMessageInputTabsM:sentence
							When run logging -m="mes6sag3\t\tmes6sag3\t"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:	mes6sag3		mes6sag3	"
							The status should be success
						End
						It "Tab" loggingLoggingRequiredOptionMessageInputTabsM:tab
							When run logging -m="\t"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:		"
							The status should be success
						End
					End
					Describe "--msg:" loggingLoggingRequiredOptionMessageInputTabs:msg
						It "Sentence" loggingLoggingRequiredOptionMessageInputTabsMsg:sentence
							When run logging --msg="\tmes6sag3\t\tmes6sag3"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:		mes6sag3		mes6sag3"
							The status should be success
						End
						It "Tab" loggingLoggingRequiredOptionMessageInputTabsMsg:tab
							When run logging --msg="\t\t\t"
							The stderr should not be present
							The lines of stdout should equal 1
							The stdout line 1 should equal "TRACE:				"
							The status should be success
						End
					End
				End
			End
		End
	End
End

