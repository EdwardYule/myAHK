#Requires AutoHotkey v2.0
; #Include <MyLib>
; https://wyagd001.github.io/v2/docs/Tutorial.htm
#SingleInstance Force

; #	Win(Windows 徽标键)
; !	Alt
; ^	Ctrl
; +	Shift
; &	用于连接两个按键(含鼠标按键) 合并成一个自定义热键.

; 光标移动控制
CapsLock & j::Send "{Left}"
CapsLock & l::Send "{Right}"
CapsLock & i::Send "{Up}"
CapsLock & k::Send "{Down}"
CapsLock & u::Send "^{Left}"
CapsLock & o::Send "^{Right}"
CapsLock & n::Send "{Home}"
CapsLock & m::Send "{End}"
CapsLock & h::Send "{PgUp}"
CapsLock & `;::Send "{PgDn}" ; 这里使用`进行转义
CapsLock & ,::Send "{Up}{Up}{Up}{Up}{Up}"
CapsLock & .::Send "{Down}{Down}{Down}{Down}{Down}"
CapsLock & Enter::Send "{End}{Enter}"

#HotIf GetKeyState("CapsLock", "P")
  ; 当大写键按下时，可实现选择控制
  !j::Send "+{Left}"
  !l::Send "+{Right}"
  !i::Send "+{Up}"
  !k::Send "+{Down}"
  !u::Send "+^{Left}"
  !o::Send "+^{Right}"
  !n::Send "+{Home}"
  !m::Send "+{End}"
  !h::Send "+{PgUp}"
  !`;::Send "+{PgDn}"
  !,::Send "+{Up}+{Up}+{Up}+{Up}+{Up}"
  !.::Send "+{Down}+{Down}+{Down}+{Down}+{Down}"
#HotIf

#HotIf GetKeyState("CapsLock", "T")
  ; 当大写键打开时
#HotIf

; ~CapsLock::{

;   !j::Send "+{Left}"
; }



; TODO 以上全部按键如果加上alt就要实现选择的功能
; 还缺失了PageUp，PageDown的功能
; 发现在中文输入法下，有时候功能会失效，变成输入中文字符了

; 这种写法叫做热字串，是需要输入btw之后，再按一下tab键
; 并且不一定要在文本输入框中，只要在任意地方，包括桌面也可以
; ::btw::{
;     MsgBox "You typed btw."
; }
