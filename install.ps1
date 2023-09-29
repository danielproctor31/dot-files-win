Write-Output "Installing oh-my-posh"
winget install JanDeDobbeleer.OhMyPosh

Write-Output "Installing nerd-fonts"
scoop bucket add nerd-fonts
scoop install CascadiaCode-NF
scoop install CascadiaCode-NF-Mono

Write-Output "Installing Neovim"
winget install Neovim.Neovim

Write-Output "Installing vim plug"
Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    New-Item "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

Write-Output "linking dot-files"

$env:DotFilesAutodetect = 'true'
$env:DotFilesPath = "$HOME\dot-files-win"

Remove-Item $HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

Install-DotFiles

Write-Output "Finished"
