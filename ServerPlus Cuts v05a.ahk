;Windows Activate

F1::
WinActivate, ServerPlus Notepad
ControlFocus, Edit6, ServerPlus Notepad
Return

F2:: 
SetTitleMatchMode, 2
WinActivate, - Google Chrome
WinGetActiveTitle, CurrentT ;Get Current Title to break loop if found
Loop, 15
{
   Send ^{Tab}
   WinGetTitle, Title, A  ;get active window title
   if(InStr(Title, CTitle)>0) ;is the current title the Extracted title?
   {
      break ; Terminate the loop
   }
   if(InStr(Title, CurrentT)>0) ;is the current title the same as what it began with?
   {
      Function1()
   }
   Sleep, 20
}
Sleep, 50
SendInput {Ctrl down}{Alt down}k{Alt up}{Ctrl up}
Return


F3:: 
WinActivate, , Pidgin
Return




;;UNIVERSAL KEY PHRASES;;;;;;;;;;;;;;;;;;;;

::cx::Customer

::vc::Verified Customer

::vcvl::Verified Location

::nn::No additional notes related to customers current issue

::yn::**Additional notes related to customers current issue**

::cac::Customers status is Active in back office

::cacp::Customers status is Active in Powercode

::err::Error message from browser - "Cannot connect to internet "

::bnic::Customer is not able to browse the web

::ss::(Screenshot)

::nic::- No Internet Connection



;;Customer Issues;;;;;;;;;;;;;;;;;;;;;

::cnic::**Customer is not able to connect to the internet**

::cslow::**Customer states that they are experiencing slow internet speeds**

::cinstall::**Customer is adding new equimpment to their network**

::cpay::**Customer wishes to make a payment on their account** {Enter}Made payment on the customers account as per their request{Enter}

::cint::**Customer states that their internet connection is intermittent**

::cex::**Customer is calling to check on status of an escalated issue**

::cdel::**Customers account is delenquent**

::cpot::**Customer wants to have equipment installed on their location and receive services**

::cemail::**Customer is having difficulty with with email client**

::csend::**Customer is having customer is unable to send or receive emails**

::csales::**Potential customer wishes to sign up for service**



;;Commmon Router Statements;;;;;;;

::pcr::Powercycled Router

::byr::Bypassed Router

::rset::Assisted customer in configuring router for ISP



;;Commmon Speed Statements;;;;;;;

::uslow::Explained that internet speeds are related to usage

::stest::Speed Test Results: 10MBs Download 10MBs Upload

::cspeed::Customers plan offers  6MBs Download and 1MBs Upload

::c80::Customers speeds are below 80% of their plan



;;Commmon Prompt Statments;;;;;;;;;;;

::vip::Customer has valid IP address ()

::nvip::Customer does not have valid IP address ()

::rip::Had customer renew and release IP address

::npg::Customer cannot ping to google.com or google server

::pg:: Customer can ping google.com

::sip::Confirmed customer is using DHCP on device


;;Closing/Exit Statements;;;;;;;;;;;;;;;

::ex::Escalated to Service Provider as directed by DT

::exn::Adding notes but not re-escalating

::rx::Issue Resolved

::rxc::Customer Connected - Issue Resolved

::px::Resolution pending on subscriber response

::vmx::Outbound call - No response from customer {Enter}Left Voicemail

::gx::Incoming call  - Customer not responding to salutations{Enter}Dead air - Indicated to potential listener to call back if they are still experiencing issues

::1bd::1 Business Day

::ccx::**Customer is available to call anytime after **

::mx::**Directed customer to contact the device manufacturer**

::bx::**Directed customer to contact the billing department**

::nrx::**Directed customer to obtain a router - their equimpent is not compatible with the ISP**


;;Common Solutions/Problems;;;;;;;;;;;;;;;

;;Tier Two Callback
::t2call::Customer missed a phone call from Tier 2 seeking to assist customer with escalated issue{Enter}Tier 2 left voicemail directing customer to call back{Enter}{Enter}Customer requesting call back from Tier 2 at{Enter}



::nbyr::**Customer cannot bypass router - Customer does not possess any devices that have an ethernet port**



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


;;Commmon PoE Statments;;;;;;;;;;;

::pcp::Powercycled PoE device and reseated cables in PoE Ethernet ports

::pled::PoE power light is green

::ccon::Confirmed that CPE Radio is connected to the PoE via black Ethernet cable {Enter}Confirmed that LAN port on PoE is connected via blue Ethernet cable to the WAN port on the router

::100ip::Customers set up uses both 10.x.x.x and 100.20x.x.x IP addresses





;;Common Equipment Statments;;;;;;;;;;;

::cfw::Customer uses Fixed Wireless Equipment

::cf::Customer uses Fiber

::nlte::Customer is not using LTE equipment



;;Common Browser Statments

::bcc::Assisted customer in clearing their browsers cookies/cache/etc

::bp::Assisted customer in disabling proxy settings

::bnic::Customer is not able to browse the web






;; KEY PHRASES for KORCETT ;;;;;;;;;;;;;;;

::ww41::Wired/Wireless Equipment - KCM V4 on Tier 1

::ww31::Wired/Wireless Equipment - KCM V3 on Tier 1

::w41::Wired Equipment - KCM V4 on Tier 1

::w31::Wired Equipment - KCM V3 on Tier 1

::nok::Customer not located at  Benedictine University or Benedictine Alabama {Enter}No banner in KCM {Enter}{Enter}No password listed in expandables{Enter}Customer not located at Independence Place at Ft. Benning{Enter}{Enter}No known outages at location

::nok2::Customer cannot disconnect device from wall jack - not a wired device{Enter}Disabled - Enabled wireless adaptor{Enter}{Enter}Cannot test device with another ethernet cable - not a wired device{Enter}No additional devices with ethernet ports to test connection with{Enter}{Enter}Cannot test device with anotheron alternative wall port - not a wired device{Enter}{Enter}


::noout:: No known outage

::cca::Created customer account



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



;;Korcett Slow Speeds

::kslow::Customer states that they are experiencing slow internet speeds{Enter}{Enter}Customer is getting valid IP address(IP){Enter}Confirmed Laptop MAC Address is registered in  KCM (MAC) - No additional information in APR{Enter}{Enter}Speed Test Results: 1.93 MBs Download and 1.81 MBs Upload {Enter}Default speeds are 34x34 - Customer is not obtaining these speeds{Enter}{Enter}No information available in Centreon {Enter}No information regarding site capping{Enter}{Enter}Escalated as per DT




;;MDU;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::ceth::Location uses an ethernet connection
::cdsl::Location uses a DSL connection


;;;Hotel;;;;;;;;;;;;;;;;;;
::noh::Guest is not calling about a Chromecast Device{Enter}Guest is not calling about a Email Client related issue{Enter}{Enter}Guest is not calling about Kiosk Support




;;https://autohotkey.com/board/topic/77688-assign-text-to-a-variable-from-clipboard/

;;Clipboard Varible declaration test

^+h::
SetTitleMatchMode, 2
WinActivate, - Google Chrome
Loop, 15
{
   WinGetTitle, Title, A  ;get active window title
   if(InStr(Title, CTitle)>0)
   {
      break ; Terminate the loop
   }
   Send ^{Tab}
   Sleep, 50
}
return

















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
;;INJECT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+q::
;;Notes
WinActivate, ServerPlus Notepad
Sleep 100
SendInput {F11}
SetTitleMatchMode, 2
WinActivate, - Google Chrome
Loop, 15
{
   WinGetTitle, Title, A  ;get active window title
   if(InStr(Title, CTitle)>0)
   {
      break ; Terminate the loop
   }
   Send ^{Tab}
   Sleep, 50
}
Sleep 50
SendInput {Ctrl down}{Alt down}j{Alt up}{Ctrl up}
Sleep 50
SendInput {Ctrl down}a{Ctrl up}
SendInput {Ctrl down}v{Ctrl up}
Return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;EXTRACT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+a::

;;Put current clipboard in varible
ReturnTO := Clipboard

;NAME
SetTitleMatchMode, 2
WinActivate, - Google Chrome

WinGetActiveTitle, CTitle

SendInput {Alt down}m{Alt up}
Sleep 50
ControlFocus, Edit1, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}

;Make customers name a varible
CName := Clipboard

;Email
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}e{Alt up}
Sleep 50
ControlFocus, Edit3, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
CEmail := Clipboard

;Phone
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}p{Alt up}
Sleep 50
ControlFocus, Edit4, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
Cphone := Clipboard

;ID
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}i{Alt up}
Sleep 50
ControlFocus, Edit2, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
Cid := Clipboard

;Address
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}l{Alt up}
Sleep 50
ControlFocus, Edit5, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
Lid := Clipboard

;City
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}c{Alt up}
Sleep 50
ControlFocus, Edit5, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Enter}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
Cid := Clipboard

;State
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}s{Alt up}
Sleep 50
ControlFocus, Edit5, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {,}{space}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
Sid := Clipboard


;;Prep Chrome for Exlusive Notepad use
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Ctrl down}{Alt down}h{Alt up}{Ctrl up}
Sleep 50
SendInput {Ctrl down}{Alt down}k{Alt up}{Ctrl up}

WinActivate, ServerPlus Notepad
ControlFocus, Edit6, ServerPlus Notepad

MsgBox, 0, ServerPlus Notepad, %CName%'s information is in Serverplus Notepad!, 1

SendInput {Ctrl down}a{Ctrl up}


Clipboard = %ReturnTo%
Return







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Paste Customer Info
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


^+p::
;;Add to notes
WinActivate, ServerPlus Notepad
ControlFocus, Edit6, ServerPlus Notepad
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
	SendInput {Enter}{Enter}
	SendInput Location:{Enter}
	SendInput {F6}
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


^+v::
Sendinput {Alt down}{PrintScreen}{Alt up}
Sleep, 50
SetTitleMatchMode, 2
WinActivate, - Google Chrome
Loop, 15
WinGetActiveTitle, CurrentT ;Get Current Title to break loop if found
Loop, 15
{
   Send ^{Tab}
   WinGetTitle, Title, A  ;get active window title
   if(InStr(Title, CTitle)>0) ;is the current title the Extracted title?
   {
      break ; Terminate the loop
   }
   if(InStr(Title, CurrentT)>0) ;is the current title the same as what it began with?
   {
      Function1() ;jump to new chrome window if loop has completed
      WinGetActiveTitle, CurrentT ;set new active title
   }
   Sleep, 20
}
Sleep, 50
SendInput !v
Sleep, 50
SendInput ^v
Return









;;Switch between windows of sam application
;;https://autohotkey.com/board/topic/95768-switch-between-windows-of-the-same-application/



Function1()
{
WinGetClass, ActiveClass, A
WinActivateBottom, ahk_class %ActiveClass%
}


$PgDn::    ; Next window
WinGetClass, ActiveClass, A
WinSet, Bottom,, A
WinActivate, ahk_class %ActiveClass%
return

$PgUp::    ; Last window
WinGetClass, ActiveClass, A
WinActivateBottom, ahk_class %ActiveClass%
return


