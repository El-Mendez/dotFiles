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
	-Path $env:userprofile\.config\starship.toml `
	-ItemType SymbolicLink `
	-Value $env:userprofile\dotFiles\.config\starship.toml

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
git clone https://github.com/El-Mendez/dotFiles

sudo apt install fish fzf fd-find
sudo apt install batcat

curl -sS https://starship.rs/install.sh | sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

ln -s ~/dotFiles/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotFiles/.config/fish/config.fish ~/.config/fish/config.fish
ln -s ~/dotFiles/.config/nvim/init.vim ~/.ideavimrc
ln -s ~/dotFiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotFiles/.config/starship.toml ~/.config/starship.toml

git config --global core.excludesfile ~/dotFiles/.config/git/common.gitignore
git config --global include.path ~/dotFiles/.config/git/common.gitconfig

chsh -s $(which fish)
```
