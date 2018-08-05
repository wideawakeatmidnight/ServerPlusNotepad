;https://autohotkey.com/board/topic/50251-activating-chrome-tab/

SetTitleMatchMode, 2
WinActivate, - Google Chrome

Loop, 15
{
   WinGetTitle, Title, A  ;get active window title
   if(InStr(Title, "YouTube")>0)
   {
      break ; Terminate the loop
   }
   Send ^{Tab}
   Sleep, 50
}

return