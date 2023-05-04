@echo off  
Echo Install oh-my-posh 

winget install JanDeDobbeleer.OhMyPosh

Echo Install nerd-fonts
scoop bucket add nerd-fonts
scoop install CascadiaCode-NF
scoop install CascadiaCode-NF-Mono

Echo Finished
