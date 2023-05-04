# dot-files-win

## Prerequisites

- [PSDotFiles](https://github.com/ralish/PSDotFiles)
- Terminal config references [Chocolatey](https://chocolatey.org/install) which I use as a package manager for desktop software.
- [Scoop](https://scoop.sh/) is also used for terminal/development related tools.

### Install Scoop

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

### Install Chocolatey

**Requires admin shell**
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## Usage

```
git clone git@github.com:danielproctor31/dot-files-win.git $HOME\dot-files-win
cd $HOME\dot-files-win
.\setup.ps1
.\install.ps1
```
