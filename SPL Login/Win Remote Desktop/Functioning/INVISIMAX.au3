Run("C:\Windows\system32\mstsc.exe")
WinWait("Remote Desktop Connection")
WinActivate("Remote Desktop Connection")
SendKeepActive("Remote Desktop Connection")
;;Remote Desktop
Send('208.72.144.202:6030', "1")
Send('{ENTER}')
SendKeepActive('')

WinWait("Windows Security")
WinActivate("Windows Security")
SendKeepActive("Windows Security")
;;Password
Send('SPiM@x15', "1")
Send('{ENTER}')
SendKeepActive('')

WinWait("Remote Desktop Connection","The remote computer could not be authenticated due to problems with its security certificate. It may be unsafe to proceed.", 10)
WinActivate("Remote Desktop Connection","The remote computer could not be authenticated due to problems with its security certificate. It may be unsafe to proceed.")
SendKeepActive("Remote Desktop Connection","The remote computer could not be authenticated due to problems with its security certificate. It may be unsafe to proceed.")
;;Click Button Instance 5
ControlClick("Remote Desktop Connection","","Button5")
SendKeepActive('')