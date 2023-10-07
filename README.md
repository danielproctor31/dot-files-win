# dot-files-win

## Prerequisites
- [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)

### Windows

#### Development Mode
This is required to allowing symlinking of our files:

https://learn.microsoft.com/en-us/windows/apps/get-started/enable-your-device-for-development


## Usage

This repository needs to be cloned into the user profile directory:
```
git clone git@github.com:danielproctor31/dot-files-win.git $env:USERPROFILE\dot-files-win
```

Run:
```
cd $env:USERPROFILE\dot-files-win
.\install.ps1
```