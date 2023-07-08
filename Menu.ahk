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

; 以下是菜单项

PowerToys := Menu()
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
CapsLock & RButton::SmartMenu.Show