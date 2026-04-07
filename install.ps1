Write-Output "linking dot-files"

New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.wslconfig" -Target "$env:USERPROFILE\dot-files-win\wsl\.wslconfig" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.gitconfig" -Target "$env:USERPROFILE\dot-files-win\git\.gitconfig" -Force
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim\init.vim" -Target "$env:USERPROFILE\dot-files-win\nvim\init.vim" -Force
New-Item -ItemType SymbolicLink -Path "$([Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments))\Powershell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\dot-files-win\powershell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dot-files-win\terminal\settings.json" -Force

# copilot
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.copilot\agents" -Target "$env:USERPROFILE\dot-files-win\copilot\agents" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.copilot\skills" -Target "$env:USERPROFILE\dot-files-win\copilot\skills" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.copilot\hooks" -Target "$env:USERPROFILE\dot-files-win\copilot\hooks" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.copilot\mcp-config.json" -Target "$env:USERPROFILE\dot-files-win\copilot\mcp-config.json" -Force

# opencode
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.config\opencode\opencode.json" -Target "$env:USERPROFILE\dot-files-win\config\opencode\opencode.json" -Force

# agents
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.agents\skills" -Target "$env:USERPROFILE\dot-files-win\agents\skills" -Force

Write-Output "Finished"
