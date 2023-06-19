Write-Output linking dot-files

$DotFilesAutodetect = 'true'
$DotFilesPath = "$HOME\dot-files-win"

Remove-Item $HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

Install-DotFiles

Write-Output Finished
