; LWin & LAlt::
; LAlt & LWin::
; {
;   Click , , "Left down"
;   KeyWait "Alt"
;   KeyWait "#"
;   Click , , "Left up"
; }


; MyGui := Gui(, "Title of Window")
; MyGui.Opt("+AlwaysOnTop -SysMenu +Owner")  ; +Owner 避免显示任务栏按钮.
; MyGui.Add("Text",, "Some text to display.")
; MyGui.Show("NoActivate")  ; NoActivate 让当前活动窗口继续保持活动状态.

; 透明度
CapsLock & WheelDown::
CapsLock & Left::
{
  Transparent := WinGetTransparent("A")
  if (Transparent){
    WinSetTransColor "0xFFFFFF " Transparent - 15, "A"
  } else if (Transparent = "0"){
    WinSetTransColor "0xFFFFFF" " 0", "A"
  } Else {
    WinSetTransColor "0xFFFFFF" " 240", "A"
  }
}

CapsLock & WheelUp::
CapsLock & Right::
{
  Transparent := WinGetTransparent("A")
  if(Transparent = "255"){
    WinSetTransColor "Off", "A"
  }else if (Transparent){
    WinSetTransColor "0xFFFFFF " Transparent + 15, "A"
  }
}
#HotIf GetKeyState("Alt")
  ~CapsLock & Right::
  ~CapsLock & WheelUp::{
    WinSetTransColor "Off", "A"
  }
#HotIf

; 窗口层级
CapsLock & Up::{
  WinSetAlwaysOnTop -1, "A"
}
CapsLock & Down::{
  WinSetAlwaysOnTop 0, "A"
}