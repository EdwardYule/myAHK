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
  ; TODO 这里有个bug，按住CapsLock，然后按住Alt再放开Alt，会触发Alt键，应该不让触发比较好
#HotIf

#HotIf GetKeyState("CapsLock", "T")
  ; 在按住CapsLock时，可以做些什么事情呢？
  ; 1. 用于切换输入法
  ; 2. 用于切换大小写
  ; 3. 用于切换中英文
  ; 4. 用于切换布局
  ; 5. 用于切换屏幕
  ; 6. 用于切换窗口
  ; 7. 用于切换桌面
  ; 8. 用于切换任务栏
  ; 9. 用于切换任务管理器
  ; 10. 用于切换文件管理器
  ; 11. 用于切换浏览器
  ; 12. 用于切换编辑器
  ; 13. 用于切换音乐播放器
  ; 14. 用于切换视频播放器
  ; 15. 用于切换游戏
  ; 16. 用于切换虚拟机
  ; 17. 用于切换远程桌面
  ; 18. 用于切换远程终端
  ; 19. 用于切换远程文件管理器
  ; 20. 用于切换远程浏览器
  ; 21. 用于切换远程编辑器
  ; 22. 用于切换远程音乐播放器
  ; 23. 用于切换远程视频播放器
  ; 24. 用于切换远程游戏
  ; 25. 用于切换远程虚拟机
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
CapsLock & BackSpace::Send "{End}+{Home}{BackSpace 2}" ;删除整行
; 这样操作比较好，因为可以适应不同的编辑器。删除两下是彻底删除这一行，而不是删除到行首。

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

TryRun(command){
  try
    Run command
  catch
    MsgBox "运行失败"
}
; 软件快捷键
CapsLock & F1::TryRun("cmd")
CapsLock & F2::TryRun("code")
CapsLock & F3::TryRun("control")
CapsLock & F4::TryRun("powershell")

; 输入框
; 自带的输入框太丑了，能不能搞个漂亮一点的
; CapsLock & Space::{
;   IB := InputBox("你想要做什么", "MagicBox")
;   if IB.result = "OK"
;     MsgBox(IB.value)
; }