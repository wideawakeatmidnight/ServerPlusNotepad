;Windows Activate

F1::
WinActivate, ServerPlus Notepad
ControlFocus, Edit5, ServerPlus Notepad
Return

F2:: 
SetTitleMatchMode, 2
WinActivate, - Google Chrome
Return

F3:: 
WinActivate, , Pidgin
Return


;;UNIVERSAL KEY PHRASES;;;;;;;;;;;;;;;;;;;;

::cx::Customer

::vc::Verified Customer

::vcvl::Verified Location

::nn::No additional notes related to customers current issue

::yn::Additional notes related to customers current issue

::cact::Customers status is Active in back office

::err::Error message from browser - "Cannot connect to internet "

::cnb::Customer is not able to browse the web

::ss::(Screenshot)

::nic::- No Internet Connection



;;Customer Issues;;;;;;;;;;;;;;;;;;;;;

::cnic::**Customer is not able to connect to the internet

::cslow::**Customer states that they are experiencing slow internet speeds

::cnew::**Customer is adding new equimpment to their network

::cpay::Customer wishes to make a payment on their account {Enter}Made payment on the customers account as per their request{Enter}

::cint::**Customer states that their internet connection is intermittent

::cex::**Customer is calling to check on status of an escalated issue

::cdel::**Customers account is delenquent

::cpot::**Customer wants to have equipment installed on their location and receive services



;;Commmon Router Statements;;;;;;;

::pcr::Powercycled Router

::byr::Bypassed Router

::rconfig::Assisted customer in configuring router for ISP



;;Commmon Speed Statements;;;;;;;

::uslow::Explained that internet speeds are related to usage

::stest::Speed Test Results: 10MBs Download 10MBs Upload

::cspeed::Customers plan offers  6MBs Download and 1MBs Upload

::c80::Customers speeds are below 80% of their plan



;;Command Prompt Statments;;;;;;;;;;;

::vip::Customer has valid IP address ()

::nvip::Customer does not have valid IP address ()

::rip::Had customer renew and release IP address

::npg::Customer cannot ping to google.com or google server

::pg:: Customer can ping google.com




;;Closing/Exit Statements;;;;;;;;;;;;;;;

::ex::Escalated to Service Provider as directed by DT

::exn::Adding notes but not re-escalating

::rx::Issue Resolved

::rxc::Customer Connected - Issue Resolved

::px::Resolution pending on subscriber response

::vmx::Outbound call - No response from customer {Enter}Left Voicemail

::gx::Incoming call  - Customer not responding to salutations{Enter}Dead air - Indicated to potential listener to call back if they are still experiencing issues

::1bd::1 Business Day

::ccall::**Customer is available to call anytime after 


;;Common Solutions;;;;;;;;;;;;;;;

;;Tier Two Callback
::t2call::Customer missed a phone call from Tier 2 seeking to assist customer with escalated issue{Enter}Tier 2 left voicemail directing customer to call back{Enter}{Enter}Customer requesting call back from Tier 2 at{Enter}






;; KEY PHRASES for WIRELESS



;;Tower Statments;;;;;;;;;;;

::tup::AP indicates that it is functioning properly (Tower UP)

::tdown::AP is not responding (Tower Down) {Enter}Informed Supervisor of situation

;;Tower Outage
::tout::Educated customer on current condition of tower outage {Enter}Directed to call back in 24 hours if they are still unable to connect to internet{Enter}{Enter}Resolved - Known Issue



;;Command Radio Statments;;;;;;;;;;;

::rup::CPE indicates that it is functioning properly (Radio Up)

::rdown::CPE is not communicating with AP (Radio Down)

::rsignal::Customers CPE is receiving acceptable radio signal

::rcr::Reconnected with the radio

::lanc::CPE indicates that is connected to a ethernet device


;;Command PoE Statments;;;;;;;;;;;

::pcp::Powercycled PoE device and reseated cables in PoE Ethernet ports

::pled::PoE power light is green

::ccon::Confirmed that CPE Radio is connected to the PoE via black Ethernet cable {Enter}Confirmed that LAN port on PoE is connected via blue Ethernet cable to the WAN port on the router

::100ip::Customers set up uses both 10.x.x.x and 100.20x.x.x IP addresses



;;Common Equipment Statments;;;;;;;;;;;

::fw::Customer uses Fixed Wireless Equipment



;; KEY PHRASES for KORCETT ;;;;;;;;;;;;;;;

::ww41::Wired/Wireless Equipment - KCM V4 on Teir 1
Return

::ww31::Wired/Wireless Equipment - KCM V3 on Teir 1
Return

::w41::Wired Equipment - KCM V4 on Teir 1
Return

::w31::Wired Equipment - KCM V3 on Teir 1
Return

::nok::Customer not located at  Benedictine University or Benedictine Alihambra {Enter}No banner in KCM {Enter}{Enter}No password listed in expandables{Enter}Customer not located at Independence Place at Ft. Benning{Enter}{Enter}No known outages at location
Return

::noout:: No known outage
Return

::cca::Created customer account
Return


;;MAC Address Statements::::::::::::::::::::::

::adp::Added Mobile MAC address to customers account ()

::adl::Added Laptop MAC to address to customers account ()

::adtv::Added TV MAC to address to customers account ()

::adxb::Added Xbox MAC to address to customers account ()

::adps::Added Playstation 4 MAC to address to customers account ()

::adr::Added Router MAC to address to customers account ()

::narp::No information available in ARP table

::wport::Testing device on alternative wall port

::newcable::Testing device with another ethernet cable

::nodev::No additional devices with ethernet ports to test connection with 

::disen::Disabled - Enabled wireless adaptor

::nok2::Customer cannot disconnect device from wall jack - not a wired device{Enter}Disabled - Enabled wireless adaptor{Enter}{Enter}Cannot test device with another ethernet cable - not a wired device{Enter}No additional devices with ethernet ports to test connection with{Enter}{Enter}Cannot test device with anotheron alternative wall port - not a wired device{Enter}{Enter}



;;Korcett Slow Speeds

::kslow::Customer states that they are experiencing slow internet speeds{Enter}{Enter}Customer is getting valid IP address(IP){Enter}Confirmed Laptop MAC Address is registered in  KCM (MAC) - No additional information in APR{Enter}{Enter}Speed Test Results: 1.93 MBs Download and 1.81 MBs Upload {Enter}Default speeds are 34x34 - Customer is not obtaining these speeds{Enter}{Enter}No information available in Centreon {Enter}No information regarding site capping{Enter}{Enter}Escalated as per DT
































;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Hot Key Control ServerPlus NotePad
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+s::
;;FIRST PASTE
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	SendInput Name:{Space}
	SendInput {F7}
	Sleep 50
	SendInput ^v
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
;;ID PASTE
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	SendInput Customer ID:{Space}
	SendInput {F8}
	Sleep 50
	SendInput ^v
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
    	SendInput Email:{Space}
	SendInput {F9}
	Sleep 50
	SendInput ^v
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
    	SendInput Phone:{Space}
	SendInput {F10}
	Sleep 50
	SendInput ^v
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
	SendInput {F11}
	Sleep 50
	SendInput ^v
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
SendInput {Alt down}m{Alt up}
Sleep 100
ControlFocus, Edit1, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
SendInput {Ctrl down}v{Ctrl up}

;Email
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}e{Alt up}
Sleep 100
ControlFocus, Edit3, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
SendInput {Ctrl down}v{Ctrl up}

;Phone
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}p{Alt up}
Sleep 100
ControlFocus, Edit4, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
SendInput {Ctrl down}v{Ctrl up}

;ID
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}i{Alt up}
Sleep 100
ControlFocus, Edit2, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
SendInput {Ctrl down}v{Ctrl up}

MsgBox, 0, ServerPlus Notepad, Extraction Complete!, 1

WinActivate, ServerPlus Notepad
ControlFocus, Edit5, ServerPlus Notepad
Return


^+p::
;;Add to notes
WinActivate, ServerPlus Notepad
ControlFocus, Edit5, ServerPlus Notepad
    	;SendInput ^a
	;SendInput {Delete}
	SendInput Name:{Space}
	SendInput {F7}
	Sleep 100
	SendInput ^v
	SendInput {Enter}
	SendInput Email:{Space}
	SendInput {F9}
	Sleep 100
	SendInput ^v
	SendInput {Enter}
	SendInput Phone:{Space}
	SendInput {F10}
	Sleep 100
	SendInput ^v
	SendInput {Enter}
	SendInput Customer ID:{Space}
	SendInput {F8}
	Sleep 100
	SendInput ^v
	SendInput {Enter}

Return











;https://autohotkey.com/board/topic/39739-google-chrome-handler/









;;https://stackoverflow.com/questions/403967/how-may-i-reference-the-script-tag-that-loaded-the-currently-executing-script








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Screenshot Shortcut (IT WELL BE GLORIOUS!);;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;https://autohotkey.com/board/topic/77421-printscreen-to-paint-automatically/

;;Activate on Windows + v
#v::
;;Send Alt-printscreen
Sendinput {Alt down}{PrintScreen}{Alt up}


;;https://autohotkey.com/board/topic/50251-activating-chrome-tab/





