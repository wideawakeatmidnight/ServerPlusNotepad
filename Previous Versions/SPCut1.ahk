;;https://autohotkey.com/board/topic/77421-printscreen-to-paint-automatically/

;;Activate on Windows + v
#v::
;;Send Alt-printscreen
Sendinput {Alt down}{PrintScreen}{Alt up}


;;https://autohotkey.com/board/topic/50251-activating-chrome-tab/












;;UNIVERSAL KEY PHRASES

::cxic::Customer is not able to connect to the internet
Return

::nic::- No Internet Connection
Return

::pcr::Powercycled Router
Return

::rconfig::Assisted customer in configuring router for ISP
Return

::byr::Bypassed Router
Return

::ex::Escalated to Service Provider as directed by DT
Return

::rx::Issue Resolved
Return

::rxc::Customer Connected - Issue Resolved
Return

::px::Resolution pending on subscriber response
Return

::exn::Adding notes but not re-escalating
Return 

::vmx::Outbound call - Left Voicemail

::gx::Ghost Caller


;;Tier Two Callback
::t2call::Customer missed a phone call from Tier 2 seeking to assist customer with escalated issue{Enter}Tier 2 left voicemail directing customer to call back{Enter}{Enter}Customer requesting call back from Tier 2 at{Enter}
Return



;; KEY PHRASES for WIRELESS


::cxact::Customers status is Active in back office
Return

::tup::AP Tower indicates that it is functioning properly
Return

::rup::CPE Radio indicates that it is functioning properly
Return

::ret::CPE indicates that is connected to a ethernet device
Return

::pcp::Powercycled PoE device and reseated cables in PoE Ethernet ports
Return

;;Cable Configuration Confirmation
::concab::Confirmed that CPE Radio is connected to the PoE via black Ethernet cable {Enter}Confirmed that LAN port on PoE is connected via blue Ethernet cable to the LAN port on the router
Return

;;Tower Outage
::tout::Educated customer on current condition of tower outage {Enter}Directed to call back in 24 hours if they are still unable to connect to internet{Enter}{Enter}Resolved - Known Issue
Return


;; KEY PHRASES for KORCETT

::cca::Created customer account
Return

::adp::Added Phone MAC to KCM ()
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


::ww41::Wired/Wireless Equipment - KCM V4 on Teir 1
Return

::w41::Wired Equipment - KCM V4 on Teir 1
Return


;;Korcett Slow Speeds
::kslow::Customer states that they are experiencing slow internet speeds{Enter}{Enter}Customer is getting valid IP address(IP){Enter}Confirmed Laptop MAC Address is registered in  KCM (MAC) - No additional information in APR{Enter}{Enter}Speed Test Results: 1.93 Download  and 1.81 Upload{Enter}Default speeds are 34x34 - Customer is not obtaining these speeds{Enter}{Enter}No information available in Centreon {Enter}No information regarding site capping{Enter}{Enter}Escalated as per DT
Return




;Windows Activate

F1::WinActivate, ServerPlus Notepad
F2::WinActivate, Chrome


;Control ServerPlus NotePad

#f::
;Check if there is a location to paste data
IfWinActive, ServerPlus Notepad
{
    	MsgBox, 0, ServerPlus Notepad, You cannot use this shortcut when ServerPlus Notepad is the active window, 3
	SendInput {F7}^v
	Return
}

;Paste First Name
WinActivate, ServerPlus Notepad
SendInput {F7}
SendInput {Alt down}{Tab}{Alt up}
Sleep 250
SendInput ^v
Return



;MsgBox, 0, ServerPlus Notepad, Please select the place you would like to paste the data.  You cannot use this shortcut when ServerPlus Notepad is the active window.













