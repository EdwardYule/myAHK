#HotIf GetKeyState("Alt")
  ; TODO 这里有个bug，按住CapsLock，然后按住Alt再放开Alt，会触发Alt键，应该不让触发比较好
  ; 另外，按住CapsLock和Alt，松开，实际上切换了大小写
  ; 是不是应该加一个定时器判断？
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
  ~CapsLock & BackSpace::{
    ; 判断是否在vscode中
    if WinActive("ahk_exe Code.exe")
      Send "^l{BackSpace}" ;删除选中的所有行
    else
      Send "{End}+{Home 2}{BackSpace 2}" ;删除整行
  }
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
CapsLock & BackSpace::Send "{End}+{Home}{BackSpace}" ;删除至行首

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