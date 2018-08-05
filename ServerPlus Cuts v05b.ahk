;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;Short Phrases Loader
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#Include %A_ScriptDir%\ShortPhrases.ahk



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Windows Activate
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
;;Check to make sure user has started a new issue
SetTitleMatchMode, 2
WinActivate, - Google Chrome
WinGetTitle, Title, A  ;get active window title
if(InStr(Title, "Issuetracker - Subscriber Incident List")>0) 
 	{
	MsgBox, 48, ServerPlus Notepad, You must create a New Issue before you can Extract!, 2 
	}else{


;;Put current clipboard in varible to return later
ReturnTO := Clipboard

;;Set Page title as reference for Screen Shot and F2
WinGetActiveTitle, CTitle

;NAME;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


SendInput {Alt down}m{Alt up}
Sleep 100
ControlFocus, Edit1, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 100
SendInput {Ctrl down}v{Ctrl up}

;Make customers name a varible
CName := Clipboard

;Email;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}e{Alt up}
Sleep 50
ControlFocus, Edit3, ServerPlus Notepad
WinActivate, ServerPlus Notepad
CEmail := Clipboard
;check if current item is same as last
if(CEmail = CName){
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput NA
} else {
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
}

;Phone;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}p{Alt up}
Sleep 50
ControlFocus, Edit4, ServerPlus Notepad
WinActivate, ServerPlus Notepad
Cphone := Clipboard
if(CEmail = CPhone){
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput NA
} else {
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
}

;ID;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}i{Alt up}
Sleep 50
ControlFocus, Edit2, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
Sleep 50
Cid := Clipboard

;Prep Address/Location;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ControlFocus, Edit5, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Delete}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;Address/Location;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}l{Alt up}
Sleep 50

Clocation := Clipboard 
;check if current item is same as last
if(Clocation = Cid){
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {del}
} else {
ControlFocus, Edit5, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Ctrl down}a{Ctrl up}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
}


;City;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}c{Alt up}
Sleep 50

Ccity := Clipboard
if(Ccity = Clocation){

} else {
ControlFocus, Edit5, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {Enter}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
}

;State;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, 2
WinActivate, - Google Chrome
SendInput {Alt down}s{Alt up}
Sleep 50

Cstate := Clipboard
if(Cstate = Ccity){

} else {
ControlFocus, Edit5, ServerPlus Notepad
WinActivate, ServerPlus Notepad
SendInput {,}{space}
Sleep 50
SendInput {Ctrl down}v{Ctrl up}
}


;;Prep Chrome for Exlusive Notepad use;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
}
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

















;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Screenshot Shortcut (IT WELL BE GLORIOUS!);;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Activate on Windows + v
#v::
;;Send Alt-printscreen
Sendinput {Alt down}{PrintScreen}{Alt up}


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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;FUNCTIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;Switch between Windows of same Application;;;;;;;;;;;;;;;
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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;RESOURCES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Switch between windows of sam application
;;https://autohotkey.com/board/topic/95768-switch-between-windows-of-the-same-application/

;;Send Clipboard element to varible
;;https://autohotkey.com/board/topic/77688-assign-text-to-a-variable-from-clipboard/

;;Activating specific Chrome Tab
;;https://autohotkey.com/board/topic/50251-activating-chrome-tab/

;;Printscreen to Paint
;;https://autohotkey.com/board/topic/77421-printscreen-to-paint-automatically/



;;Potentially Useful
;;https://autohotkey.com/board/topic/39739-google-chrome-handler/