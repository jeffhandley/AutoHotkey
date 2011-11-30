; Play/Pause with the following keys:
;   1) Ctrl+Win+Numpad0
; If Pandora is running, the song will play or pause.  If Pandora is not running, it will be launched.

^#Numpad0::
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
;   1) Ctrl+Win+NumpadDot
; If Pandora is running, it will be activated, the current song skipped, and then Pandora will be minimized.

^#NumpadDot::
IfWinExist Pandora
{
	WinActivate
	Send {Right}
	WinMinimize
}
return

; Restore Pandora with the following keys:
;   1) Ctrl+Win+NumpadEnter
; If Pandora is running, it will be activated.  If Pandora is not running, it will be launched.

^#NumpadEnter::
IfWinExist Pandora
{
	WinRestore
	WinActivate
}
else
{
	Run "C:\Program Files (x86)\Pandora\Pandora.exe"
}
return

; Minimize Pandora with the following keys:
;   1) Win+Alt+NumpadEnter
; If Pandora is running, it will be minimized.

#!NumpadEnter::
WinMinimize Pandora
return
