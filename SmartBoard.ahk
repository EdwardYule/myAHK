#Requires AutoHotkey v2.0
; https://wyagd001.github.io/v2/docs/Tutorial.htm

#SingleInstance Force ;强制单例

; 库文件
#Include Lib.ahk
;CapsLock键相关功能，主要负责光标移动，文本选择等文字工作功能
#Include CapsLock.ahk
;Windows相关功能，主要用于窗口调节
#Include Windows.ahk
;菜单相关
#Include Menu.ahk

!+^z::Reload

; win11通知
Info("脚本已启动")