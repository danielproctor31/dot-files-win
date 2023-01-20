# dot-files-win

https://github.com/ralish/PSDotFiles

## Installation
```
Install-Module -Name PSDotFiles
```

Clone this repository into `$HOME/dot-files-win`.

### Windows Terminal

The windows terminal config requires oh-my-posh to be installed.

```
winget install oh-my-posh
```
or
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
