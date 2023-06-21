#Requires AutoHotkey v2.0
#Include <MyLib>
; https://wyagd001.github.io/v2/docs/Tutorial.htm

; #	Win(Windows 徽标键)
; !	Alt
; ^	Ctrl
; +	Shift
; &	用于连接两个按键(含鼠标按键) 合并成一个自定义热键.

CapsLock & j::{
  Send "{Left}"
}
CapsLock & l::{
  Send "{Right}"
}
CapsLock & i::{
  Send "{Up}"
}
CapsLock & k::{
  Send "{Down}"
}
+ Capslock & j::{
  Send "{+}{Left}"
}

; 这种写法是需要输入btw之后，再按一下tab键
; 并且不一定要在文本输入框中，只要在任意地方，包括桌面也可以
::btw::
{
    MsgBox "You typed btw."
}
