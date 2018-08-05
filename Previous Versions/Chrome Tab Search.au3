;https://www.autoitscript.com/forum/topic/179015-chrome-switch-multiple-tab/

AutoItSetOption("WinTitleMatchMode", 2)
$searchString = "YouTube"

For $i = 1 to 100
WinActivate ("Chrome")
    Send("^{TAB}")
    If Not(StringInStr(WinGetTitle("[ACTIVE]"), $searchString) = 0) Then
        WinSetState($searchString,"",@SW_MAXIMIZE)
        ExitLoop
    EndIf
Next
