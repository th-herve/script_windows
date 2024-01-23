#IfWinActive 
$#c:: 
Send, #!{c}
Run, calc
return

#+c::
Run, calc
return

#f:: ; Win+F
Run, explorer.exe
return

#i::
Run, SnippingTool.exe
return
