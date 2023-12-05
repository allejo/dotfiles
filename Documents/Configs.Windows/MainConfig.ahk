#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
#Warn  ; Enable warnings to assist with detecting common errors.
#MaxHotkeysPerInterval 200
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

/**
 * Disable Alt key acceleration.
 * These next two lines are very important. You have to change the "menu mask
 * key" away from being Control, to something that won't result in cross-talk.
 * https://autohotkey.com/boards/viewtopic.php?f=76&t=57683
 */
#MenuMaskKey vk07 ; vk07 is unassigned
#UseHook

GroupAdd, terminals, ahk_exe powershell.exe
GroupAdd, terminals, ahk_exe WindowsTerminal.exe
GroupAdd, terminals, ahk_exe Cmd.exe
GroupAdd, terminals, ahk_exe mstsc.exe ; Remote desktop.

GroupAdd, posix, ahk_exe powershell.exe
GroupAdd, posix, ahk_exe WindowsTerminal.exe
GroupAdd, posix, ahk_exe Cmd.exe
GroupAdd, posix, ahk_exe gvim.exe
GroupAdd, posix, ahk_exe mstsc.exe ; Remote desktop.

; CHEATSHEET
; # Win    ! Alt    ^ Ctrl    + Shift

LCtrl & Tab:: AltTab
!Tab::Send ^{Tab}
!+Tab::Send ^+{Tab}

; Command-Delete - Delete line
^Backspace::Send +{Home}{Delete}
; Command-Shift-Delete - Delete line forward
^+Backspace::Send {Shift down}{End}{Shift up}{Delete}
; Option-Delete - Delete word
!Backspace::Send {Control down}{Backspace}{Control up}
; Option-Shift-Delete - Delete word forward
!+Backspace::Send {Control down}{Delete}{Control up}

; Command-Shift-5 - Screenshot
^+4::Send {LWin down}{Shift down}s{Shift up}{LWin up}

#IfWinActive ahk_group terminals
  ^w::Send ^W
  ^t::Send ^+1
#IfWinActive

#IfWinActive ahk_exe sublime.exe
  ^!f::Send ^h
#IfWinActive

; Chrome shortcuts
#IfWinActive ahk_exe chrome.exe
  ; Command-[ - Browser back
  ^[::Send {Browser_Back}
  ; Command-] - Browser forward
  ^]::Send {Browser_Forward}
  ; Command-Option-I - Developer tools
  ^!i::Send {F12}
  ; Command-Y - History
  ^y::Send {Control down}h{Control up}

  ; Disable mouse wheel zooming in Chrome
  $^WheelDown::return
  $^WheelUp::return
#IfWinActive

; OpenVPN Connect stupidity
#IfWinActive ahk_exe OpenVPNConnect.exe
  NumpadEnter::Send {Enter}
#IfWinActive

; -- Custom Keys

^!D::
  Run, C:\Program Files\Zeal\Zeal.exe
return
