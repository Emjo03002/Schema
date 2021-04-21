SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoTrayIcon
#Persistent
#SingleInstance, Force

SetTimer, CheckActive, 250 
Return

#S::
    Gui, Add, Picture,, Schema.png 
    Gui, Show
    aWin := WinActive("A")
Return

#D::
    If A_WDay in 2,3,4,5,6
        Gui, Add, Picture,, Dag%A_WDay%.png
        Gui, Show
        aWin := WinActive("A")
return 

CheckActive:
    If WinActive("A") != aWin
        Gui, Destroy
Return