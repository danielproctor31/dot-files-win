# dot-files-win

## Prerequisites
- [Scoop](https://scoop.sh/) is also used for terminal/development related tools.

### Windows

#### Development Mode
This is required to allowing symlinking of our files:

https://learn.microsoft.com/en-us/windows/apps/get-started/enable-your-device-for-development


#### Allow Executing Powershell Scripts

In powershell run:

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Install Scoop

```
irm get.scoop.sh | iex
```

## Usage

Run in a Powershell console:
```
git clone git@github.com:danielproctor31/dot-files-win.git $HOME\dot-files-win
cd $HOME\dot-files-win
.\install.ps1
```
