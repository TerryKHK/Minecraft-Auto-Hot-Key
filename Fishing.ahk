;==================================================================================================

#NoEnv

SetBatchLines -1
SetTitleMatchMode 2
#SingleInstance Force

wintit = Minecraft 1.13

;===================================================================================================
;Shortcuts
;===================================================================================================
Hotkey	!^f,	Fishing		; Pressing ctrl + alt + f will start fishing
Hotkey	!^s,	Stop	        ; Pressing ctrl + alt + s will stop it

;===================================================================================================
;GUI
;===================================================================================================
Gui, Show, w200 h85, Shortcuts
Gui, Add, Button, x10 y10 w100 gFishing, % "Fishing farm"
Gui, Add, Button, yp+40 w100 gStop, % "Stop"
Gui, Show,, MClick
return

;===================================================================================================
;===================================================================================================
Fishing:
{
	IfWinExist %wintit%

	BreakLoop = 0
		Loop
		{
			if (BreakLoop = 1)
			{
				BreakLoop = 0
				break
			}

			Sleep 100
				ControlClick, , %wintit%, ,Right, , NAD
			Sleep 500
				ControlClick, , %wintit%, ,Right, , NAU
		}
	Return
}

;==================================================================================================
Stop:
BreakLoop = 1
return

;===================================================================================================
ESC:
GuiClose:
GuiEscape:
ExitApp