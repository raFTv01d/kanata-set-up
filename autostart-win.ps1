# $KanataDirectoryPath = "$env:UserProfile\Documents\Kanata"

$KanataDirectoryPath = "C:\tools\kanata"
$StartupPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$ProgramName = "Kanata"
$KanataExe = "kanata_cmd_allowed.exe"
$KanataConfig = "kanata.kbd"
$LogPath = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), "StartupLog.txt")
$StartupCommand = "`"$KanataDirectoryPath\$KanataExe`" -ExecutionPolicy Unrestricted -WindowStyle Hidden -ArgumentList `"--cfg $KanataDirectoryPath\$KanataConfig`" >> `"$LogPath`""

Set-ItemProperty -Path $StartupPath -Name $ProgramName -Value $StartupCommand
