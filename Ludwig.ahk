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
CapsLock & j::Send "{Left}" ;向左
CapsLock & l::Send "{Right}" ;向右
CapsLock & i::Send "{Up}" ;向上
CapsLock & k::Send "{Down}" ;向下
CapsLock & u::Send "^{Left}" ;向左一个单词
CapsLock & o::Send "^{Right}" ;向右一个单词
CapsLock & n::Send "{Home}" ;跳到行首
CapsLock & m::Send "{End}" ;跳到行末
CapsLock & h::Send "{PgUp}" ;跳到上一页
CapsLock & `;::Send "{PgDn}" ; 这里使用`进行转义，跳到下一页
CapsLock & ,::Send "{Up}{Up}{Up}{Up}{Up}" ;向上5行
CapsLock & .::Send "{Down}{Down}{Down}{Down}{Down}" ;向下5行
CapsLock & Enter::Send "{End}{Enter}" ;回车到下一行
CapsLock & BackSpace::Send "^l{BackSpace}" ;删除整行

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
