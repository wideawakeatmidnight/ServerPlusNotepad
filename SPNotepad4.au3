#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Critical Libraries for Selecting All contents in Edit boxs;;;;;;;;;;;;;
#include <WinAPI.au3>
#include <GUIEdit.au3>

#Region ### START Koda GUI section ### Form=F:\ServerPlusNotepad\form3.kxf
$ServerPlusNotes = GUICreate("ServerPlus Notepad", 426, 730, -1, -1)
GUISetBkColor(0xA6CAF0)
Global $FirstName = GUICtrlCreateInput("First", 32, 7, 179, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Ctrl + Alts + S")
Global $ExternalID = GUICtrlCreateInput("External ID", 244, 7, 120, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Crtl + Alt + D")
Global $Email = GUICtrlCreateInput("email@address.com", 32, 45, 156, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Ctrl +Alt+E")
Global $PhoneNumber = GUICtrlCreateInput("(666)-666-6666", 32, 86, 124, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Ctrl + Alt + F")
Global $Address = GUICtrlCreateEdit("", 200, 45, 169, 70, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_WANTRETURN))
GUICtrlSetData(-1, "Address")
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
Global $AdditionalNotes = GUICtrlCreateEdit("", 8, 176, 409, 545)
GUICtrlSetData(-1, "AdditionalNotes")
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUICtrlSetResizing(-1, $GUI_DOCKAUTO+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
GUICtrlSetTip(-1, "Clear Chrome Tabs")
Global $ExtractBtn = GUICtrlCreateButton("Extraction", 10, 123, 132, 41)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Ctrl + Shift + A")
Global $AddBtn = GUICtrlCreateButton("Addition", 147, 123, 132, 41)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Ctrl + Shift + P")
Global $InjectBtn = GUICtrlCreateButton("Injection", 282, 123, 132, 41)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Ctrl + Shift + Q")
$Label1 = GUICtrlCreateLabel("@", 8, 48, 24, 28)
GUICtrlSetFont(-1, 14, 800, 0, "MS Sans Serif")
$Label2 = GUICtrlCreateLabel("#", 10, 88, 15, 28)
GUICtrlSetFont(-1, 16, 800, 0, "MS Sans Serif")
$ID = GUICtrlCreateLabel("ID", 218, 8, 23, 28)
GUICtrlSetFont(-1, 14, 800, 0, "MS Sans Serif")
$Person = GUICtrlCreatePic("x:\ServerPlusNotepad\Images\person go1.jpg", 6, 10, 22, 22)
$Location = GUICtrlCreatePic("x:\ServerPlusNotepad\Images\house go.jpg", 163, 84, 28, 30)
Global $TabBtn = GUICtrlCreateButton("Tabs", 376, 7, 41, 25)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetTip(-1, "Close Non Tracker Chrome Tabs")
Global $SaveBtn = GUICtrlCreateButton("Save", 376, 35, 41, 25)
GUICtrlSetTip(-1, "Save to Notepad")
Global $HelpBtn = GUICtrlCreateButton("Help", 376, 63, 41, 25)
GUICtrlSetTip(-1, "Open Help Fiile")
Global $ClearBtn = GUICtrlCreateButton("Clear", 376, 92, 41, 25)
GUICtrlSetTip(-1, "Clear All Inputs")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

;;Declare Varibles

Global $iFirst = GUICtrlRead ($FirstName)
Global $iExternalID = GUICtrlRead ($ExternalID)
Global $iNumber = GUICtrlRead ($PhoneNumber)
Global $iEmail = GUICtrlRead ($Email)
Global $iAddress = GUICtrlRead ($Address)
Global $iNotes = GUICtrlRead ($AdditionalNotes)


;;StartUP Reminder
MsgBox ( 0, "ServerPlus Notepad v0.6", "Thank you for beta testing ServerPlus Notepad, Scott Schwarz!" & @CRLF & @CRLF & "To use this program you must install ServerPlus Extended into Chrome." & @CRLF & @CRLF & "Please let me know what you think about the project:" & @CRLF &"scott.schwarz@serverplus.com")

;;ToolTips
;;GUICtrlSetTip($FirstName,"Paste Name", "Ctrl + Shift + S",1,1)
;;GUICtrlSetTip($Email, "Paste Email", "Ctrl + Shift + E",1,1)
;;GUICtrlSetTip($PhoneNumber, "Paste Phone Number", "Ctrl + Shift + R",1,1)
;;GUICtrlSetTip($AdditionalNotes, "Paste Notes","Ctrl + Shift + Q",1,1)


;;Clear Text Button
Func ClearInputs()
	ControlSetText("ServerPlus Notes", "",$FirstName,"")
	ControlSetText("ServerPlus Notes", "",$ExternalID,"")
	ControlSetText("ServerPlus Notes", "",$Email,"")
	ControlSetText("ServerPlus Notes", "",$PhoneNumber,"")
	ControlSetText("ServerPlus Notes", "",$Address,"")
	ControlSetText("ServerPlus Notes", "",$AdditionalNotes,"")
EndFunc

Func HelpInputs()
	ControlSetText("ServerPlus Notes", "",$FirstName,"Full Name")
	ControlSetText("ServerPlus Notes", "",$ExternalID,"External ID")
	ControlSetText("ServerPlus Notes", "",$Email,"Email Address")
	ControlSetText("ServerPlus Notes", "",$PhoneNumber,"Phone Number")
	ControlSetText("ServerPlus Notes", "",$Address,"Phone Number")
	ControlSetText("ServerPlus Notes", "",$AdditionalNotes,"Additional Notes")
EndFunc


;Gather Data from Inputs
Func InputVariables ()
	$iFirst = GUICtrlRead ($FirstName)
	$iExternalID = GUICtrlRead ($ExternalID)
	$iNumber = GUICtrlRead ($PhoneNumber)
	$iEmail = GUICtrlRead ($Email)
	$iAddress = GUICtrlRead ($Address)
	$iNotes = GUICtrlRead ($AdditionalNotes)

EndFunc

;Combine Input Varibles
Func ConbineInputs()
	Send($iFirst)
	Send(" ")
	Send($iExternalID)
	Send("{Enter}")
	Send($iEmail)
	Send("{Enter}")
	Send($iNumber)
	Send("{Enter}")
	Send($iAddress)
	Send("{Enter}")
	Send($iNotes)

EndFunc

Func SendInputs()
	InputVariables()
	Run ("notepad.exe")
	WinWaitActive("Untitled - Notepad")
	ConbineInputs()
	Send("^a")
	Send("^c")
	WinClose("Untitled - Notepad")
	WinWaitActive("Notepad", "Save")
	Send("!n")
EndFunc

Func SaveInputs()
	InputVariables()
	Run ("notepad.exe")
	WinWaitActive("Untitled - Notepad")
	ConbineInputs()
	WinClose("Untitled - Notepad")
	WinWaitActive("Notepad", "Save")
	Send("!s")
	WinWaitActive ("Save As")
	Send($iFirst)
	Send(" ")
	Send($iExternalID)

EndFunc



;;https://www.autoitscript.com/autoit3/docs/functions/ClipPut.htm

;;Send Inputs to Clipboard
Func FirstCopy()
		InputVariables()
		ClipPut ($iFirst)
EndFunc

Func IDCopy()
		InputVariables()
		ClipPut ($iExternalID)
EndFunc

Func EmailCopy()
		InputVariables()
		ClipPut ($iEmail)
EndFunc

Func PhoneCopy()
		InputVariables()
		ClipPut ($iNumber)
EndFunc

Func AddressCopy()
		InputVariables()
		ClipPut ($iAddress)
EndFunc

Func NotesCopy()
		InputVariables()
		ClipPut ($iNotes)
EndFunc

;;Copy Function Shortcuts

HotKeySet ("{F7}", "FirstCopy")
HotKeySet ("{F8}", "IDCopy")
HotKeySet ("{F9}", "EmailCopy")
HotKeySet ("{F10}", "PhoneCopy")
HotKeySet ("{F6}", "AddressCopy")
HotKeySet ("{F11}", "NotesCopy")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Select All Fuctionality
;;https://www.autoitscript.com/forum/topic/97473-hotkey-ctrla-for-select-all-in-the-selected-edit-box/

; Create dummy for accelerator key to activate
$hSelAll = GUICtrlCreateDummy()

GUISetState()

; Set accelerators for Ctrl+a
Dim $AccelKeys[1][2]=[["^a", $hSelAll]]
GUISetAccelerators($AccelKeys)

Func _SelAll()
    $hWnd = _WinAPI_GetFocus()
    $class = _WinAPI_GetClassName($hWnd)
    If $class = 'Edit' Then _GUICtrlEdit_SetSel($hWnd, 0, -1)
EndFunc   ;==>_SelAll

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Button Functions
Func ExtractAct()
	Send("^+a")
EndFunc

Func AddAct()
	Send("^+p")
EndFunc

Func InjectAct()
	Send("^+q")
EndFunc




While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		;;Select ALL
		Case $hSelAll
            _SelAll()

		Case $ExtractBtn
			ExtractAct()

		Case $AddBtn
			AddAct()

		Case $InjectBtn
			InjectAct()


	EndSwitch
WEnd

