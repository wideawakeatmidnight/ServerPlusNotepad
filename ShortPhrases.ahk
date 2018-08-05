;;;;READ INSTRUCTIONS ON CREATING CUSTOM;;;;;;;;; 
;;;;SHORT PHRASES IN THE SERVERPLUS EXTENSION;;;; 
;;;;POPUP BEFORE EDITING THIS FILE;;;;;;;;;;;;;;;



;;UNIVERSAL KEY PHRASES;;;;;;;;;;;;;;;;;;;;

::cx::Customer

::vc::Verified Customer

::vcvl::Verified Location

::nn::No additional notes related to customers current issue

::yn::**Additional notes related to customers current issue**

::cac::Customers status is Active in back office (Screenshot)

::cacp::Customers status is Active in Powercode

::err::Error message from browser - "Cannot connect to internet "

::bnic::Customer is not able to browse the web

::ss::(Screenshot)

::nic::- No Internet Connection



;;Customer Issues;;;;;;;;;;;;;;;;;;;;;

::cnic::**Customer is not able to connect to the internet**

::cslow::**Customer states that they are experiencing slow internet speeds**

::cadd::**Customer is adding new equipment to their network**

::cpay::**Customer wishes to make a payment on their account** {Enter}Made payment on the customers account as per their request{Enter}

::cint::**Customer states that their internet connection is intermittent**

::cex::**Customer is calling to check on status of an escalated issue**

::cdel::**Customers account is delenquent**

::cpot::**Customer wants to have equipment installed on their location and receive services**

::cemail::**Customer is having difficulty with with email client**

::csend::**Customer is having customer is unable to send or receive emails**

::csales::**Potential customer wishes to sign up for service**

::cex2::**Customer is calling to check on status of an escalated issue**{Enter}Customer called very recently about issue with {Enter}{Enter}Customer has not received a phone call from Tier 2 seeking to assist customer with escalated issue{Enter}Customer requesting call back from Tier 2 ASAP{Enter}{Enter}Indicated to customer that issue has been re-escalate issue to Tier 2{Enter}Re-escalating issue{Enter}{Enter}Indicated to customer that response window for excalated ticket has not passed{Enter}Adding notes but not re-escalating


::creal::**Customer is experiencing difficutly viewing channels on Real Choice TV**

::cnat::**Customer is unable to use all the features of a Game Consoles due to NAT restrictions**


;;Commmon Router Statements;;;;;;;

::pcr::Powercycled Router

::byr::Bypassed Router

::rset::Assisted customer in configuring router for ISP

::frr::Factory Reset Router

::rint::Customer is able to connect to the router but not to the internet

::nbyr::**Customer cannot bypass router - Customer does not possess any devices that have an ethernet port**




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

::pingp::Customer has not packet loss with pinging google.com

::frr::Factory Reset Router



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

::lx::Customer is not on location with equipment{Enter}Directed customer call back when on location to troubleshoot{Enter}{Enter}Resolution pending on subscriber response 

::cdx::Customer disconnected call{Enter}Called customer back - Left VM{Enter}{Enter}Resolution pending on subscriber response


;;Common Solutions/Problems;;;;;;;;;;;;;;;

;;Tier Two Callback
::t2call::Customer missed a phone call from Tier 2 seeking to assist customer with escalated issue{Enter}Tier 2 left voicemail directing customer to call back{Enter}{Enter}Customer requesting call back from Tier 2 at{Enter}

::sdt::Switching to relevant DT


::rbc::Rebooting Customers Computer



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

::nlanc::CPE indicates that is not connected to a ethernet device

::rwait::Waited three minutes for a response from the radio


;;Commmon PoE Statments;;;;;;;;;;;

::pcp::Powercycled PoE device and reseated cables in PoE Ethernet ports

::pled::PoE power light is green

::ccon::Confirmed that CPE Radio is connected to the PoE via black Ethernet cable {Enter}Confirmed that LAN port on PoE is connected via blue Ethernet cable to the WAN port on the router

::100ip::Customers set up uses both 10.x.x.x and 100.20x.x.x IP addresses

::npled::PoE power light NOT lit{Enter}Had customer try to use another outlet - still no light



;;Common Equipment Statments;;;;;;;;;;;

::cfw::Customer uses Fixed Wireless Equipment

::cf::Customer uses Fiber Equipment

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

::nok3::Disconnected and reconnected ethernet cable from device and wallport{Enter}Disabled - Enabled wireless adaptor{Enter}Testing connection with another ethernet cable{Enter}Testing connection on alternative wall port


;;Korcett Slow Speeds

::kslow::Customer states that they are experiencing slow internet speeds{Enter}{Enter}Customer is getting valid IP address(IP){Enter}Confirmed Laptop MAC Address is registered in  KCM (MAC) - No additional information in APR{Enter}{Enter}Speed Test Results: 1.93 MBs Download and 1.81 MBs Upload {Enter}Default speeds are 34x34 - Customer is not obtaining these speeds{Enter}{Enter}No information available in Centreon {Enter}No information regarding site capping{Enter}{Enter}Escalated as per DT




;;MDU;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::ceth::Location uses an ethernet connection
::cdsl::Location uses a DSL connection


;;;Hotel;;;;;;;;;;;;;;;;;;
::noh::Guest is not calling about a Chromecast Device{Enter}Guest is not calling about a Email Client related issue{Enter}{Enter}Guest is not calling about Kiosk Support

