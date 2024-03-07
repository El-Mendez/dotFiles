# Dot Files
> En Windows todos los comandos que craen links tienen que correr en admin.

## Windows
**Requisitos**
- PowerShell (pwsh.exe)
 - [NerdFonts](https://www.nerdfonts.com/font-downloads)

```pwsh
winget install JanDeDobbeleer.OhMyPosh
Install-Module PSReadLine
Install-Module z -AllowClobber

# profile script
New-Item `
	-Path $profile `
	-ItemType SymbolicLink `
	-Value $env:userprofile\dotFiles\shells\pwsh.ps1

# ideavimrc
New-Item `
	-Path $env:userprofile\.ideavimrc `
	-ItemType SymbolicLink `
	-Value $env:userprofile\dotFiles\vim\init.vim

# nvim
New-Item `
	-Path $env:userprofile\AppData\Local\nvim\init.vim `
	-ItemType SymbolicLink `
	-Value $env:userprofile\dotFiles\vim\init.vim

# config de git
git config --global core.excludesfile ~/dotFiles/git/common.gitignore
git config --global include.path ~/dotFiles/git/common.gitconfig
```

## Linux
### Simple
```bash
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

ln -s ~/dotFiles/vim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotFiles/shells/zsh/simplest.zsh ~/.zshrc
```

### Terminal
```bash
sudo apt install zsh fzf batcat fd-find

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

ln -s ~/dotFiles/vim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotFiles/shells/zsh/terminal.zsh ~/.zshrc
```

### Desktop
```bash
sudo apt install zsh fzf batcat fd-find

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

ln -s ~/dotFiles/vim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotFiles/vim/init.vim ~/.ideavimrc

ln -s ~/dotFiles/shells/zsh/desktop.zsh ~/.zshrc
ln -s ~/dotFiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

git config --global core.excludesfile ~/dotFiles/git/common.gitignore
git config --global include.path ~/dotFiles/git/common.gitconfig
```
