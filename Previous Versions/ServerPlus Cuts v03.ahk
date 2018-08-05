;Windows Activate

F1::WinActivate, ServerPlus Notepad
F2:: 
SetTitleMatchMode, 2
WinActivate, - Google Chrome
Return



;;UNIVERSAL KEY PHRASES

::cx::Customer

::v::Verified Customer
Return

::ss::(Screenshot)

::cnic::Customer is not able to connect to the internet
Return

::nic::- No Internet Connection
Return

::cslow:: Customer states that they are experiencing slow internet speeds

::pcr::Powercycled Router
Return

::rconfig::Assisted customer in configuring router for ISP
Return

::byr::Bypassed Router
Return

;;Command Prompt;;;;;;;;;;;

::vip::Customer has valid IP address ()
Return

::nvip::Customer does not have valid IP address ()

::rip:: Had customer renew and release IP address

::npg::Customer cannot ping to google.com or google server

::pg:: Customer can ping google.com


;;;;;;;;;;;;;;;

::stest::Speed Test Results: 10MBs Download 10MBs Upload

::ex::Escalated to Service Provider as directed by DT
Return

::exn::Adding notes but not re-escalating
Return 

::rx::Issue Resolved
Return

::rxc::Customer Connected - Issue Resolved
Return

::px::Resolution pending on subscriber response
Return

::vmx::Outbound call - No responce from customer {Enter}Left Voicemail
Return

::gx::Incoming call  - Customer not responding to salutations{Enter}Dead air - Indicated to potential listener to call back if they are still experiencing issues
Return


;;Tier Two Callback
::t2call::Customer missed a phone call from Tier 2 seeking to assist customer with escalated issue{Enter}Tier 2 left voicemail directing customer to call back{Enter}{Enter}Customer requesting call back from Tier 2 at{Enter}
Return



;; KEY PHRASES for WIRELESS


::cact::Customers status is Active in back office
Return

::tup::AP indicates that it is functioning properly (Tower UP)
Return

::tdown::AP is not responding (Tower Down) {Enter}Informed Supervisor of situation
Return

::rup::CPE indicates that it is functioning properly (Radio Up)
Return

::rdown::CPE is not communicating with AP (Radio Down)
Return

::rsignal::Customers CPE is receiving acceptable radio signal
Return

::lanc::CPE indicates that is connected to a ethernet device
Return

::rcr::Reconnected with the radio
Return

::pcp::Powercycled PoE device and reseated cables in PoE Ethernet ports
Return

;;Cable Configuration Confirmation
::cconfig::Confirmed that CPE Radio is connected to the PoE via black Ethernet cable {Enter}Confirmed that LAN port on PoE is connected via blue Ethernet cable to the LAN port on the router
Return

;;Tower Outage
::tout::Educated customer on current condition of tower outage {Enter}Directed to call back in 24 hours if they are still unable to connect to internet{Enter}{Enter}Resolved - Known Issue
Return


;; KEY PHRASES for KORCETT

::ww41::Wired/Wireless Equipment - KCM V4 on Teir 1
Return

::ww31::Wired/Wireless Equipment - KCM V3 on Teir 1
Return

::w41::Wired Equipment - KCM V4 on Teir 1
Return

::w31::Wired Equipment - KCM V3 on Teir 1
Return

::cca::Created customer account
Return

::adp::Added Mobile MAC to KCM ()
Return

::adl::Added Laptop MAC to KCM ()
Return

::adtv::Added TV MAC to KCM ()
Return

::adxb::Added Xbox MAC to KCM ()
Return

::adsp::Added Playstation 4 MAC to KCM ()
Return

::adr::Added Router MAC to KCM ()
Return

::narp::No information available in ARP table
Return



;;Korcett Slow Speeds
::kslow::Customer states that they are experiencing slow internet speeds{Enter}{Enter}Customer is getting valid IP address(IP){Enter}Confirmed Laptop MAC Address is registered in  KCM (MAC) - No additional information in APR{Enter}{Enter}Speed Test Results: 1.93 MBs Download and 1.81 MBs Upload {Enter}Default speeds are 34x34 - Customer is not obtaining these speeds{Enter}{Enter}No information available in Centreon {Enter}No information regarding site capping{Enter}{Enter}Escalated as per DT
Return































;;https://autohotkey.com/docs/Functions.htm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Hot Key Control ServerPlus NotePad

^+s::
;;FIRST PASTE
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	MsgBox, 0, ServerPlus Notepad, You cannot use this shortcut when ServerPlus Notepad is the active window, 3
	Return
}

;Paste First Name
WinActivate, ServerPlus Notepad
SendInput {F7}
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput ^v
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+d::
;;LAST PASTE
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	MsgBox, 0, ServerPlus Notepad, You cannot use this shortcut when ServerPlus Notepad is the active window, 3
	Return
}

;Paste Last Name
WinActivate, ServerPlus Notepad
SendInput {F8}
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput ^v
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+e::
;;EMAIL PASTE
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	MsgBox, 0, ServerPlus Notepad, You cannot use this shortcut when ServerPlus Notepad is the active window, 3
	Return
}

;Paste Email
WinActivate, ServerPlus Notepad
SendInput {F9}
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput ^v
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+r::
;;PHONE PASTE
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	MsgBox, 0, ServerPlus Notepad, You cannot use this shortcut when ServerPlus Notepad is the active window, 3
	Return
}

;Paste First Name
WinActivate, ServerPlus Notepad
SendInput {F10}
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput ^v
Return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+q::
;;Notes PASTE
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	MsgBox, 0, ServerPlus Notepad, You cannot use this shortcut when ServerPlus Notepad is the active window, 3
	Return
}

;Paste First Name
WinActivate, ServerPlus Notepad
SendInput {F11}
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput ^v
Return





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+a::
;;EXTRACT!!!
;NAME
SetTitleMatchMode, 2
WinActivate, - Google Chrome
Sleep 300
MouseClick, Left, 500, 500
SendInput ^+k
Sleep 300
ControlFocus, Edit1, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput ^a
SendInput ^v
Return

















;https://autohotkey.com/board/topic/39739-google-chrome-handler/









;;https://stackoverflow.com/questions/403967/how-may-i-reference-the-script-tag-that-loaded-the-currently-executing-script














;;https://autohotkey.com/board/topic/77421-printscreen-to-paint-automatically/

;;Activate on Windows + v
#v::
;;Send Alt-printscreen
Sendinput {Alt down}{PrintScreen}{Alt up}


;;https://autohotkey.com/board/topic/50251-activating-chrome-tab/





