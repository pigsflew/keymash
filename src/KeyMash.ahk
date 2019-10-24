; Include all our handlers & the GUI.
#Include, GUI.ahk
#Include, handlers/RapidFire.ahk

;TODO: Read Configuration; start GUI; iterate through configuration & kickoff handlers.



; Map keys to RapidFire.
~$e::RapidFire("e")
~$1::RapidFire(1)

; Remap the 4th mouse button to Shift.
XButton1::Shift
