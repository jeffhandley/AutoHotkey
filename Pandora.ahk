; Play/Pause with the following keys:
;   1) Win+Numpad0
;   2) Ctrl+Numpad0
;   3) Ctrl+Win+Numpad0
;   4) Ctrl+Alt+Numpad0
; If Pandora is running, the song will play or pause.  If Pandora is not running, it will be launched.

#Numpad0::
^Numpad0::
^#Numpad0::
^!Numpad0::
IfWinExist Pandora
{
	WinActivate
	Send {space}
	WinMinimize
}
else
{
	Run "C:\Program Files (x86)\Pandora\Pandora.exe"
}
return

; Skip the current song with the following keys:
;   1) Win+NumpadDot
;   2) Ctrl+NumpadDot
;   3) Ctrl+Win+NumpadDot
;   4) Ctrl+Alt+NumpadDot
; If Pandora is running, it will be activated, the current song skipped, and then Pandora will be minimized.

#NumpadDot::
^NumpadDot::
^#NumpadDot::
^!NumpadDot::
IfWinExist Pandora
{
	WinActivate
	Send {Right}
	WinMinimize
}
return

; Restore Pandora with the following keys:
;   1) Win+NumpadAdd
;   2) Ctrl+NumpadAdd
;   3) Ctrl+Win+NumpadAdd
;   4) Ctrl+Alt+NumpadAdd
; If Pandora is running, it will be activated.  If Pandora is not running, it will be launched.
; The Up modifier is used because without it, the Add key is sent to Pandora, which causes a Thumbs Up.

#NumpadAdd Up::
^NumpadAdd Up::
^#NumpadAdd Up::
^!NumpadAdd Up::
IfWinExist Pandora
	WinActivate
else
	Run "C:\Program Files (x86)\Pandora\Pandora.exe"
return

; Minimize Pandora with the following keys:
;   1) Win+NumpadSub
;   2) Ctrl+NumpadSub
;   3) Ctrl+Win+NumpadSub
;   4) Ctrl+Alt+NumpadSub
; If Pandora is running, it will be minimized.
; The Up modifier is used because without it, the Sub key is sent to Pandora, which causes a Thumbs Down.

#NumpadSub Up::
^NumpadSub Up::
^#NumpadSub Up::
^!NumpadSub Up::
WinMinimize Pandora
return
