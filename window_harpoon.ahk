#Requires AutoHotkey v2.0

; set keymaps to toggle application windows
; win+shift+[asdf] mark a window at the location a,s,d or f
; win+[asdf] focus that window or hide it if already active

; map holding the windows id for each key
Global winDict := Map()

#a::ActivateWindow("a")
#+a::SetWindow("a")

#s::ActivateWindow("s")
#+s::SetWindow("s")

#d::ActivateWindow("d")
#+d::SetWindow("d")

#f::ActivateWindow("f")
#+f::SetWindow("f")

;given a key either:
; - bind the current window to it if no window is already bind to that key
; - focus the bind window
; - hide the bind window if already focus
ActivateWindow(key) {
    if (!winDict.Has(key)) {
        SetWindow(key)
    } else {
	if (WinActive("ahk_id" winDict[key])) {
	    WinMinimize "ahk_id "  winDict[key]
	}
	else if (WinExist("ahk_id" winDict[key])){
	    WinActivate "ahk_id " winDict[key]
	}
        
    }
}

SetWindow(key) {
	winDict[key] := WinGetID("A")
}
