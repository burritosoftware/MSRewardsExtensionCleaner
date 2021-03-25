Set WshShell = CreateObject("WScript.Shell")
WScript.Sleep 30000
WshShell.Run chr(34) & "clean.bat" & Chr(34), 0
Set WshShell = Nothing
