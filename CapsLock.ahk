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

; 输入框
CapsLock & Space::{
  IB := InputBox("你想要做什么", "MagicBox")
  if IB.result = "OK"
    MsgBox(IB.value)
}