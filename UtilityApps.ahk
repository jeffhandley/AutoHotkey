; Activate or launch Notepad++ with Ctrl+Alt+N

^!n::
IfWinExist Notepad++
	WinActivate
else
	Run "C:\Program Files (x86)\Notepad++\notepad++.exe"
return
