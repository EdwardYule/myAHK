#Requires AutoHotkey v2.0
; https://wyagd001.github.io/v2/docs/Tutorial.htm
; #	Win(Windows 徽标键)
; !	Alt
; ^	Ctrl
; +	Shift
; &	用于连接两个按键(含鼠标按键) 合并成一个自定义热键.

#SingleInstance Force ;强制单例

Info(content){
  TrayTip content, , "Mute"
}

;CapsLock键相关功能，主要负责光标移动，文本选择等文字工作功能
#Include CapsLock.ahk
;Win键相关功能，主要用于增强系统相关功能
#Include Win.ahk
;菜单相关
#Include Menu.ahk

!+^z::{
  ; Ctrl+Shift+Alt+Z 重载脚本
  Reload
  ; win11通知
  Info("脚本已更新")
}

; ~CapsLock::{

;   !j::Send "+{Left}"
; }


; SetTimer WatchCursor, 100

; WatchCursor(){
;   MouseGetPos , , &id, &control
;   ToolTip
;   (
;       "ahk_id " id "
;       ahk_class " WinGetClass(id) "
;       " WinGetTitle(id) "
;       Control: " control
;   )
; }



; 这种写法叫做热字串，是需要输入btw之后，再按一下tab键
; 并且不一定要在文本输入框中，只要在任意地方，包括桌面也可以
; ::btw::{
;     MsgBox "You typed btw."
; }

; CapsLock & F1::{帮助}