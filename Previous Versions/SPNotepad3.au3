#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <String.au3>
#Region ### START Koda GUI section ### Form=X:\form2.kxf
$ServerPlusNotes = GUICreate("ServerPlus Notepad", 362, 723, -1, -1)
Global $MenuItem1 = GUICtrlCreateMenu("&File")
Global $New = GUICtrlCreateMenuItem("New", $MenuItem1)
Global $Save = GUICtrlCreateMenuItem("Save", $MenuItem1)
Global $Close = GUICtrlCreateMenuItem("Close", $MenuItem1)
Global $Help = GUICtrlCreateMenu("&Help")
GUISetBkColor(0xA6CAF0)
Global $FirstName = GUICtrlCreateInput("First", 32, 15, 159, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
Global $LastName = GUICtrlCreateInput("External ID", 228, 15, 128, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
Global $Email = GUICtrlCreateInput("Email Address", 32, 53, 324, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
Global $PhoneNumber = GUICtrlCreateInput("Phone Number", 32, 94, 324, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
Global $AdditionalNotes = GUICtrlCreateEdit("", 8, 192, 345, 449)
GUICtrlSetData(-1, "AdditionalNotes")
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
Global $Send = GUICtrlCreateButton("Send to Notes", 7, 648, 164, 41)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
Global $Clear = GUICtrlCreateButton("Clear", 189, 648, 164, 41)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
Global $Extract = GUICtrlCreateButton("Extract", 10, 136, 164, 41)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
Global $Update = GUICtrlCreateButton("Update", 186, 136, 164, 41)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
Global $Label1 = GUICtrlCreateLabel("@", 8, 56, 24, 28)
GUICtrlSetFont(-1, 14, 800, 0, "MS Sans Serif")
Global $Label2 = GUICtrlCreateLabel("#", 10, 96, 16, 29)
GUICtrlSetFont(-1, 16, 800, 0, "MS Sans Serif")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

;;Declare Varibles

Global $iFirst = GUICtrlRead ($FirstName)
Global $iLast = GUICtrlRead ($LastName)
Global $iNumber = GUICtrlRead ($PhoneNumber)
Global $iEmail = GUICtrlRead ($Email)
Global $iNotes = GUICtrlRead ($AdditionalNotes)


;;StartUP Reminder
MsgBox ( 0, "ServerPlus Notepad v0.6", "Thank you for beta testing ServerPlus Notepad, Scott Schwarz!" & @CRLF & @CRLF & "To use this program you must install ServerPlus Extended into Chrome." & @CRLF & @CRLF & "Please let me know what you think about the project:" & @CRLF &"scott.schwarz@serverplus.com")

;;ToolTips
GUICtrlSetTip($FirstName,"Paste Name", "Ctrl + Shift + S",1,1)
GUICtrlSetTip($Email, "Paste Email", "Ctrl + Shift + E",1,1)
GUICtrlSetTip($PhoneNumber, "Paste Phone Number", "Ctrl + Shift + R",1,1)
GUICtrlSetTip($AdditionalNotes, "Paste Notes","Ctrl + Shift + Q",1,1)


;;Clear Text Button
Func ClearInputs()
	ControlSetText("ServerPlus Notes", "",$FirstName,"")
	ControlSetText("ServerPlus Notes", "",$LastName,"")
	ControlSetText("ServerPlus Notes", "",$Email,"")
	ControlSetText("ServerPlus Notes", "",$PhoneNumber,"")
	ControlSetText("ServerPlus Notes", "",$AdditionalNotes,"")
EndFunc

Func HelpInputs()
	ControlSetText("ServerPlus Notes", "",$FirstName,"First")
	ControlSetText("ServerPlus Notes", "",$LastName,"Last")
	ControlSetText("ServerPlus Notes", "",$Email,"Email Address")
	ControlSetText("ServerPlus Notes", "",$PhoneNumber,"Phone Number")
	ControlSetText("ServerPlus Notes", "",$AdditionalNotes,"Additional Notes")
EndFunc


;Gather Data from Inputs
Func InputVariables ()
	$iFirst = GUICtrlRead ($FirstName)
	$iLast = GUICtrlRead ($LastName)
	$iNumber = GUICtrlRead ($PhoneNumber)
	$iEmail = GUICtrlRead ($Email)
	$iNotes = GUICtrlRead ($AdditionalNotes)

EndFunc

;Combine Input Varibles
Func ConbineInputs()
	Send($iFirst)
	Send(" ")
	Send($iLast)
	Send("{Enter}")
	Send($iEmail)
	Send("{Enter}")
	Send($iNumber)
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
	Send($iLast)

EndFunc

Func SendToNotes()
	InputVariables()
	$Cinfo = Send($iFirst) + ("{Enter}") + ($iEmail) + ("{Enter}") + ($iNumber)
	ControlSend ("ServerPlus Notepad", "" , $AdditionalNotes, "googd")
EndFunc


;;https://www.autoitscript.com/autoit3/docs/functions/ClipPut.htm

;;Send Inputs to Clipboard
Func FirstCopy()
		InputVariables()
		ClipPut ($iFirst)
EndFunc

Func LastCopy()
		InputVariables()
		ClipPut ($iLast)
EndFunc

Func EmailCopy()
		InputVariables()
		ClipPut ($iEmail)
EndFunc

Func PhoneCopy()
		InputVariables()
		ClipPut ($iNumber)
EndFunc

Func NotesCopy()
		InputVariables()
		ClipPut ($iNotes)
EndFunc

;;Copy Function Shortcuts
HotKeySet ("{F6}", "SendToNotes")
HotKeySet ("{F7}", "FirstCopy")
HotKeySet ("{F8}", "LastCopy")
HotKeySet ("{F9}", "EmailCopy")
HotKeySet ("{F10}", "PhoneCopy")
HotKeySet ("{F11}", "NotesCopy")





While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		;Buttons
		Case $Clear
			ClearInputs()

		Case $Extract
			Send ("{CTRLDOWN}{SHIFTDOWN}a{SHIFTUP}{CTRLUP}")

		;Menu
		Case $New
			ClearInputs()

		Case $Send
			SendInputs()

		Case $Save
			SaveInputs()

		Case $Close
			Exit

		Case $Help
			HelpInputs()

	EndSwitch
WEnd

