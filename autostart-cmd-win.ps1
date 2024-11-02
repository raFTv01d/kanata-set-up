$StartupPath="HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$ProgrammName="Kanata"
$KanataPath="C:\tools\kanata\kanata_winIOv2.exe"
$kanataConfigPath="C:\tools\kanata\kanata.kbd"
$StartupCommand="""C:/Windows/system32/conhost.exe"" --headless ""$KanataPath"" --cfg ""$kanataConfigPath"""

Set-ItemProperty -LiteralPath $StartupPath -Name $ProgrammName -Value $StartupCommand