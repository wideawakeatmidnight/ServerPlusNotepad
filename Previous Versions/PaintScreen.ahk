;;Activate on windows p
#p::
;;Send Alt-printscreen
Sendinput {Alt down}{PrintScreen}{Alt up}
;;If the window "Untitled - Paint" is present
IfWinExist Untitled - Paint
{
    ;;Activate window
    WinActivate                                    
}
else
{
    ;;Run paint
    Run %windir%\System32\mspaint.exe
    ;;Wait until "Untitled - Paint" is done loading
    WinWait Untitled - Paint
    ;;Activate the paint window
    WinActivate                                    
}
;;Paste image
Sendinput ^v
;;Save image using control s
Sendinput {Ctrl down}{s down}{s up}{Ctrl up}
;;Wait until save as dialog is done loading
WinWait Save As
;;Activate window
WinActivate
;;Paste desktop location
Sendinput F:\PortableApps\AutoitPortable\Aut2Exe{enter}
;;Select all and clear file name field
Sendinput {ctrl down}{a down}{a up}{ctrl up}{Backspace down}{Backspace up}
;;Wait until dialog box closes, either after an image was saved or canceled
WinWaitClose Save As
;;Attempt alt-f4
SendInput {LAlt Down}{F4 down}{F4 up}{LAlt Up}
;;If 'save before closing' window is present (the image was not wanted)
IfWinExist Paint
{
    ;;Select don't save
    Sendinput {Tab down}{Tab up}{Enter down}{enter up}
    ;;EXit script
    return
}
else
{
    ;;The image was saved and paint was closed
    return
}