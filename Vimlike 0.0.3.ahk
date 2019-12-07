; Note: This implementation assumes an en-US QWERTY layout.


SendMode Input
#NoEnv
#SingleInstance force


options := {delay: 150, timeout: 300, doublePress: -1, swap_backtick_escape: false, mode: "hjkl"}
loop %0% {
	arg := %A_Index%
	argSplit := StrSplit(arg, "=")
	option := argSplit[1]
	value := argSplit[2]
	options[option] := value
}

#Include <dual/dual>
dual := new Dual

#Include <dual/defaults>

; #If options.swap_backtick_escape
; *`::dual.comboKey({F22: "Escape"})
; #If


#If options.mode == "hjkl"
*k::dual.comboKey({F22: "Up"})
*h::dual.comboKey({F22: "Left"})
*j::dual.comboKey({F22: "Down"})
*l::dual.comboKey({F22: "Right"})
*e::dual.comboKey({F22: "{CTRL}{RIGHT}"})
*b::dual.comboKey({F22: "{CTRL}{LEFT}"})

*o::dual.comboKey({F22: "End"})
*u::dual.comboKey({F22: "PgDn"})
*i::dual.comboKey({F22: "PgUp"})
*'::dual.comboKey({F22: "End"})
*g::dual.comboKey({F22: "Home"})

*m::dual.comboKey({F22: "``"})
*,::dual.comboKey({F22: "~"})
#If


#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.
*Space::
*Space UP::dual.combine("F22", A_ThisHotkey, {delay: options.delay, timeout: options.timeout, doublePress: options.doublePress})


*1::dual.comboKey({F22: "F1"})
*2::dual.comboKey({F22: "F2"})
*3::dual.comboKey({F22: "F3"})
*4::dual.comboKey({F22: "F4"})
*5::dual.comboKey({F22: "F5"})
*6::dual.comboKey({F22: "F6"})
*7::dual.comboKey({F22: "F7"})
*8::dual.comboKey({F22: "F8"})
*9::dual.comboKey({F22: "F9"})
*0::dual.comboKey({F22: "F10"})
*-::dual.comboKey({F22: "F11"})
*=::dual.comboKey({F22: "F12"})

*x::dual.comboKey({F22: "Delete"})
*+x::dual.comboKey({22: "BackSpace"}) ; does not work, for some reason.
*y::dual.comboKey({F22: "^c"})
*s::dual.comboKey({F22: "Space"})
*p::dual.comboKey({F22: "^v"})

*e::dual.comboKey({F22: "Escape"})
*`::dual.comboKey("Escape", {F22: "``"})
#If