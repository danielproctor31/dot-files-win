@echo off  
Echo linking dot-files

$DotFilesAutodetect = 'true'
$DotFilesPath = "$HOME\dot-files-win"
Install-DotFiles

Echo Finished
