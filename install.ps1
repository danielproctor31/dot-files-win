Write-Output "Installing oh-my-posh"
winget install JanDeDobbeleer.OhMyPosh

Write-Output "Installing nerd-fonts"
scoop bucket add nerd-fonts
scoop install CascadiaCode-NF
scoop install CascadiaCode-NF-Mono

Write-Output "linking dot-files"

$env:DotFilesAutodetect = 'true'
$env:DotFilesPath = "$HOME\dot-files-win"

Remove-Item $HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

Install-DotFiles

Write-Output "Finished"
