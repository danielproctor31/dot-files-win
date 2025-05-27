Write-Output "Setting execution policy"
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

if (Get-Command scoop) 
{
    Write-Output "scoop already installed. Updating"
    scoop update
} 
else
{
    Write-Output "Installing scoop"
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

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

New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.wslconfig" -Target "$env:USERPROFILE\dot-files-win\wsl\.wslconfig" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.gitconfig" -Target "$env:USERPROFILE\dot-files-win\git\.gitconfig" -Force
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim\init.vim" -Target "$env:USERPROFILE\dot-files-win\nvim\init.vim" -Force
New-Item -ItemType SymbolicLink -Path "$([Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments))\Powershell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\dot-files-win\powershell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dot-files-win\terminal\settings.json" -Force

Write-Output "Finished"
