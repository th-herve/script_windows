SetCapsLockState, AlwaysOff

#If GetKeyState("CapsLock", "P")
h::Left
j::Down
k::Up
l::Right

a::Left
s::Down
w::Up
d::Right
#If

*CapsLock::
KeyWait, CapsLock
