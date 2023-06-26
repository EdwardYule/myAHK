Info(content){
  TrayTip content, , "Mute"
}

TryRun(command){
  try
    Run command
  catch
    MsgBox "运行失败"
}