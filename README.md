# Dot Files
> En Windows todos los comandos que craen links tienen que correr en admin.

## Windows
**Requisitos**
- PowerShell (pwsh.exe)
 - [NerdFonts](https://www.nerdfonts.com/font-downloads)

```pwsh
winget install starship
winget install ajeetdsouza.zoxide

# profile script
New-Item `
	-Path $profile `
	-ItemType SymbolicLink `
	-Value $env:userprofile\dotFiles\.config\powershell\pwsh.ps1

# ideavimrc
New-Item `
	-Path $env:userprofile\.ideavimrc `
	-ItemType SymbolicLink `
	-Value $env:userprofile\dotFiles\.config\nvim\init.vim

# nvim
New-Item `
	-Path $env:userprofile\AppData\Local\nvim\init.vim `
	-ItemType SymbolicLink `
	-Value $env:userprofile\dotFiles\.config\nvim\init.vim

# config de git
git config --global core.excludesfile ~/dotFiles/.config/git/common.gitignore
git config --global include.path ~/dotFiles/.config/git/common.gitconfig
```

## Linux
```bash
sudo apt install fish fzf batcat fd-find

curl -sS https://starship.rs/install.sh | sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

ln -s ~/dotFiles/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotFiles/.config/fish/config.fish ~/.config/fish/config.fish
ln -s ~/dotFiles/.config/nvim/init.vim ~/.ideavimrc
ln -s ~/dotFiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf

git config --global core.excludesfile ~/dotFiles/.config/git/common.gitignore
git config --global include.path ~/dotFiles/.config/git/common.gitconfig


```
