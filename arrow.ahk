SetCapsLockState, AlwaysOff

#If GetKeyState("CapsLock", "P")
h::BS
j::Ctrl
k::Shift
l::Del


a::Left
s::Down
w::Up
d::Right

q::Home
e::End
n::Ctrl
m::Shift
#If

*CapsLock::
KeyWait, CapsLock
