#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

Tab::
    KeyWait, Tab, T0.2
    If ErrorLevel {
        Send {LWin Down}
        KeyWait, Tab
        Send {LWin Up}
    }
return

~Tab Up::
If (A_PriorKey = "Tab" and A_TimeSincePriorHotkey < 200)
{
    KeyWait, Tab, T0.05
    If !ErrorLevel  ; Only send Tab if the key was released quickly
    {
        Sleep, 10  ; Small delay to allow system to process original Tab
        Send {Tab}
    }
}
return

