;;Author - Scott Schwarz

;;Run Application
ShellExecute(@ScriptDir & '\ubo.jnlp')

;;Wait for Java Update Request
WinWait('Java Update Needed', '', 3)
If WinExists('Java Update Needed') Then
WinActivate('Java Update Needed')
SendKeepActive('Java Update Needed')
ControlClick('Java Update Needed','', "Button3")
	EndIf



WinWait('Security Information', '', 10)
If WinExists('Security Information') Then
	WinActivate('Security Information')
	SendKeepActive('Security Information')
	Sleep (100)
	Send("{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}")
	SendKeepActive('')
	EndIf


;;Wait for application to start
WinWait('UBO - Ultimate Back Office Billing and Automation™ 7.5')
WinActivate('UBO - Ultimate Back Office Billing and Automation™ 7.5')
SendKeepActive('UBO - Ultimate Back Office Billing and Automation™ 7.5')

;;Username
Sleep (100)
Send("{CTRLDOWN}a{CTRLUP}")
;~ Sleep (100)
Send("jeffnet.org")

;;Move cursor to next input
Send('{TAB}')

;~ ;;Password
Send("{CTRLDOWN}a{CTRLUP}")
Sleep (300)
Send("Serverplus2014!", "1")

;;Login
Sleep (100)
Send('{TAB}{TAB}{ENTER}')
SendKeepActive('')