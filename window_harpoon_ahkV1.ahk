#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

Global WinMap = {}

#u::toggleWindow("u")
#+u::setWindow("u")

#i::toggleWindow("i")
#+i::setWindow("i")

#o::toggleWindow("o")
#+o::setWindow("o")

#p::toggleWindow("p")
#+p::setWindow("p")

toggleWindow(key) {
    win := WinMap[key]
    if WinActive("ahk_id" win) {
        WinMinimize, ahk_id %win%
    } else {
        WinActivate, ahk_id %win%
    }
    return
}

setWindow(key) {
    WinGet, win, ID, A
    WinMap[key] := win
    return
}
