# SmartBoard

## 下载地址

请[在此](./SmartBoard.exe)右键另存为，即可下载软件

您也可以自行编译，入口文件为SmartBoard.ahk，使用AHK2开发。

## 功能介绍

* CapsLock

按住大写键，可以将[IJKL]映射为↑←↓→，[UO]为前/后一个单词，[NM]为Home/End，[,.]为上/下5行，[H;]为PageUp/PageDown

按住大写键，同时按住Alt键，配合上述移动光标功能，即可在移动光标同时选中文本。

* 热键设计原则

1. 热键应该使用方便，双手自然控制，无需过多挪动双手，无需做出别扭的动作。本软件尽可能将热键设计为左手按住功能键进行修饰，右手实现功能。
举个例子，当左手修饰两个键时，常为CapsLock+Alt，而不会是CapsLock+Ctrl，因为前者可以由尾指和拇指自然按住，左手无需过多移动，后者按住则较为别扭，特别是当需要长时间按住时手指容易疲劳。
而在左手按住修饰键时，功能区只在右手可轻松触及的地方，而不会出现CapsLock+Alt+R这样别扭的热键。

* 技术背景

基于AutoHotKey2，借鉴了以前优秀的软件CapsLock+，将其中部分较为实用的功能借鉴过来（，并计划加入较有特色的新功能）。

## 开发初衷

本软件用于弥补部分笔记本用户没有数字键盘的缺陷，以及解决用户出行没有鼠标时，编辑文本时控制光标困难的问题。不过同样适合那些虽然有完整键鼠，但依然希望能提高工作效率的小伙伴。

本软件没有过多的功能，对于许多笔记本能轻松实现的功能，比如触控板切换桌面，windows自带搜索快捷打开文件和应用，同时兼具网络搜索的功能，都不做重复开发。

本软件与远古文本编辑器vim有略微相似之处，即它们都是为解决光标移动，文本编辑的问题而生，但vim的设计过于极客，不适用于大部分未接触过开发工作的人，譬如上下左右四个方向上，排列成一行，并不直观。本软件并不专为开发者而开发，因此希望尽可能降低入手门槛，如果能将大部分功能设计成自然而然，一次就能记住的话，那是再好不过的了。

## TO DO

* [ ]开发帮助功能

* [ ]开发触摸板手势功能

* [ ]可以增加一些常用软件功能的支持，比如微信、钉钉，浏览器等

* [ ]鼠标微调功能，用于弥补触摸板不能微调的缺陷
* [ ]多媒体控制功能，控制音量，播放暂停，上一首下一首等
* [ ]亮度调节功能
