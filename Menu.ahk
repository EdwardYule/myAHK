GoToWebSite(Item, *) {
  ; 官方网站
  Run "https://github.com/EdwardYule/myAHK"
}

DoNothing(Item, *){
}
OCRHandler(Item, *){
  Send "#+t"
}
ScreenRuler(Item, *){
  Send "#+m"
}
MousePointerCrosshairs(Item, *){
  Send "#!p"
}
AlwaysOnTop(Item, *){
  Send "#^t"
}

; 以下是菜单项

PowerToys := Menu()
PowerToys.Add "置顶", AlwaysOnTop
PowerToys.Add "OCR", OCRHandler
PowerToys.Add "屏幕标尺", ScreenRuler
PowerToys.Add "鼠标指针十字线", MousePointerCrosshairs

SmartMenu := Menu()
SmartMenu.Add "Power Toys", PowerToys
SmartMenu.Add

Contact := Menu()
Contact.Add "个人邮箱: 787322353@qq.com", DoNothing
Contact.Add "个人QQ: 787322353", DoNothing
Help := Menu()
Help.Add "联系作者", Contact
Help.Add "官方网站", GoToWebSite
SmartMenu.Add "帮助", Help

RCtrl & RAlt::SmartMenu.Show
RAlt & RCtrl::SmartMenu.Show
; RAlt & RCtrl::AppsKey ;右键功能触摸板可以两指点击实现，触摸板右下方按压也能实现，感觉没太大必要去做了

; 控制面板
; 清空回收站
; 便签？