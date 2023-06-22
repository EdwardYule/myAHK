; 托盘相关菜单，貌似没有什么作用
; IconMenuHandler(ItemName, ItemPos, MyMenu) {
;     MsgBox "You selected " ItemName " (position " ItemPos ")"
; }
; AddIconMenu(MenuName, IconMenuHandler){
;   A_TrayMenu.Add()
;   A_TrayMenu.Add(MenuName, IconMenuHandler)
;   Persistent
; }
; AddIconMenu("Item1", IconMenuHandler)
; -----------------------

; 添加一些菜单项来创建弹出菜单.
MyMenu := Menu()
MyMenu.Add "Item 1", MenuHandler
MyMenu.Add "Item 2", MenuHandler
MyMenu.Add  ; 添加分隔线.

; 添加子菜单到上面的菜单中.
Submenu1 := Menu()
Submenu1.Add "Item A", MenuHandler
Submenu1.Add "Item B", MenuHandler

; 创建第一个菜单的子菜单(右箭头指示符). 当用户选择它时会显示第二个菜单.
MyMenu.Add "My Submenu", Submenu1

MyMenu.Add  ; 在子菜单下添加分隔线.
MyMenu.Add "Item 3", MenuHandler  ; 在子菜单下添加另一个菜单项.

MenuHandler(Item, *) {
    MsgBox "You selected " Item
}

RCtrl & RAlt::MyMenu.Show
RAlt & RCtrl::MyMenu.Show
; RAlt & RCtrl::AppsKey ;右键功能触摸板可以两指点击实现，触摸板右下方按压也能实现，感觉没太大必要去做了