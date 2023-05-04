@echo off  

Echo Installing oh-my-posh 
winget install JanDeDobbeleer.OhMyPosh

Echo Installing nerd-fonts
scoop bucket add nerd-fonts
scoop install CascadiaCode-NF
scoop install CascadiaCode-NF-Mono

Echo Finished
