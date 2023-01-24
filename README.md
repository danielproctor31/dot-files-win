# dot-files-win

## Prerequisites

- [PSDotFiles](https://github.com/ralish/PSDotFiles)
- Terminal config references [Chocolatey](https://chocolatey.org/install) which I use as a package manager for desktop software.
- [Scoop](https://scoop.sh/) is also used for terminal/development related tools.

Clone this repository into `$HOME/dot-files-win`.

### Windows Terminal

The windows terminal config requires oh-my-posh to be installed.

```
scoop install oh-my-posh
```

Additionally it requires [Caskaydia Cove NF](https://www.nerdfonts.com/font-downloads). 

Install `Caskaydia Cove Nerd Font Complete Mono Windows Compatible Regular.otf` and `Caskaydia Cove Nerd Font Complete Windows Compatible Regular.otf`

## Usage
```
$DotFilesAutodetect = 'true'
$DotFilesPath = "$HOME\dot-files-win"
Install-DotFiles
```
