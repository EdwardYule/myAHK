#HotIf GetKeyState("Alt")
  ; 先按Alt，再按住大写键时，可实现选择控制
  ~CapsLock & j::Send "+{Left}"
  ~CapsLock & l::Send "+{Right}"
  ~CapsLock & i::Send "+{Up}"
  ~CapsLock & k::Send "+{Down}"
  ~CapsLock & u::Send "+^{Left}"
  ~CapsLock & o::Send "+^{Right}"
  ~CapsLock & n::Send "+{Home}"
  ~CapsLock & m::Send "+{End}"
  ~CapsLock & h::Send "+{PgUp}"
  ~CapsLock & `;::Send "+{PgDn}"
  ~CapsLock & ,::Send "+{Up 5}"
  ~CapsLock & .::Send "+{Down 5}"
#HotIf

#HotIf GetKeyState("CapsLock", "T")
  ; 当大写键打开时
  ; 我的笔记本需要Fn键也打开
  ; F1 CMD
  ; F2 VSCODE
  ; F3 控制面板
#HotIf

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
CapsLock & ,::Send "{Up 5}" ;向上5行
CapsLock & .::Send "{Down 5}" ;向下5行
CapsLock & Enter::Send "{End}{Enter}" ;回车到下一行
CapsLock & BackSpace::Send "^l{BackSpace}" ;删除整行

#HotIf GetKeyState("Shift")
  ~CapsLock & j::Send "1"
  ~CapsLock & k::Send "2"
  ~CapsLock & l::Send "3"
  ~CapsLock & u::Send "4"
  ~CapsLock & i::Send "5"
  ~CapsLock & o::Send "6"
  ~CapsLock & 7::Send "7"
  ~CapsLock & 8::Send "8"
  ~CapsLock & 9::Send "9"
  ~CapsLock & 0::
  ~CapsLock & Space::{
    Send "0"
  }
  ~CapsLock & BackSpace::Send "{BackSpace}"
#HotIf

; 输入框
; 自带的输入框太丑了，能不能搞个漂亮一点的
; CapsLock & Space::{
;   IB := InputBox("你想要做什么", "MagicBox")
;   if IB.result = "OK"
;     MsgBox(IB.value)
; }