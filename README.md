# Vim-for-Everything
An AHK script that adds some vim-like cursor movement keys to your entire system. Does not include any vim commands. Based on a a script from https://github.com/lydell/spacefn-win
Full list of remaps is as follows

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
