#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
#Warn  ; Enable warnings to assist with detecting common errors.
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

; Re-assign alt to scan code of an unassigned key
~LAlt::
  Sendinput {Blind}{sc0E9}
  KeyWait, LAlt
  Sendinput {Blind}{sc0EA}
return

~RAlt::
  Sendinput {Blind}{sc0E9}
  KeyWait, RAlt
  Sendinput {Blind}{sc0EA}
return

#w::
IfWinActive, Windows PowerShell
  Send, {Ctrl}{LShift}{w}
else
  Send, ^{w}
return

#a::Send ^a
#b::Send ^b
#c::Send ^c
#+c::Send ^+c
#d::Send ^d
#e::Send ^e
#f::Send ^f
#+f::Send ^+f
#g::Send ^g
#h::WinMinimize, A ; Command-H - Minimize active window
#i::Send ^i
#j::Send ^j
#k::Send ^k
#l::Send ^l
#m::WinMinimize, A
#n::Send ^n
#+n::Send ^+n
#o::Send ^o
#p::Send ^p
#+p::Send ^+p
#q::WinClose, A ; Command-Q - Close active window
; #r is defined below on a per app basis
#+r::Send ^+r
#s::Send ^s
#t::Send ^t
#+t::Send ^+t
#u::Send ^u
#v::Send ^v
#+w::Send ^+w
#x::Send ^x
#y::Send ^y
#z::Send ^z
#+z::Send ^Z
#/::Send ^/
#-::Send ^-
#+-::Send ^+-
#=::Send ^`=
#+=::Send ^+=
#!\::Send ^!\
#Enter::Send ^{Enter}
#+Enter::Send ^+{Enter}

#!F5::Send ^!{F5}

#!+Right::Send ^!+{Right}
#!+Left::Send ^!+{Left}
#!+Down::Send ^!+{Down}


LWin & Tab:: AltTab
!Tab::Send ^{Tab}
!+Tab::Send ^+{Tab}

; Command-arrow navigation
^Left::Send {Home}
^Right::Send {End}

; Command-Shift-arrow navigation + highlight
#+Left::Send +{Home}
#+Right::Send +{End}
#+Up::Send ^+{Home}
#+Down::Send ^+{End}

; Option-arrow navigation
!Left::Send ^{Left}
!Right::Send ^{Right}

; Option-Shift-arrow navigation + highlight
!+Left::Send ^+{Left}
!+Right::Send ^+{Right}

; Command-Delete - Delete line
^Backspace::Send +{Home}{Delete}
; Command-Shift-Delete - Delete line forward
^+Backspace::Send {Shift down}{End}{Shift up}{Delete}
; Option-Delete - Delete word
!Backspace::Send {Control down}{Backspace}{Control up}
; Option-Shift-Delete - Delete word forward
!+Backspace::Send {Control down}{Delete}{Control up}

; Command-Shift-5 - Screenshot
^#+4::Send {LWin down}{Shift down}s{Shift up}{LWin up}

#IfWinActive ahk_exe sublime.exe
  #!f::Send ^h
#IfWinActive

; Chrome shortcuts
#IfWinActive ahk_exe chrome.exe
  ; Command-[ - Browser back
  #[::Send {Browser_Back}
  ; Command-] - Browser forward
  #]::Send {Browser_Forward}
  ; Command-Option-I - Developer tools
  #!i::Send {F12}
  ; Command-Y - History
  #y::Send {Control down}h{Control up}
  ; Command-R - Reload
  #r::Send ^r
#IfWinActive

; OpenVPN Connect stupidity
#IfWinActive ahk_exe OpenVPNConnect.exe
  NumpadEnter::Send {Enter}
#IfWinActive

; -- Custom Keys

#^+D::
  Run, C:\Program Files\Zeal\Zeal.exe
return
