# Dot Files
Me dio mucha pereza tener que estar va de sincronizar mis archivos en muchos lugares, así que mejor voy a poner toda mi configuración en línea. 

**Todos los comandos que utilizan mklink en windows se tienen que correr en la `cmd.exe` como administrador.**

## Terminal
La configuración en Windows solo son dos cosas realmente, la terminal y vim.

### Para Windows
Vamos a utilizar posh, pwsh y NerdFonts. También le vamos a poner autocompletado basado en el historial.

#### Instalar PowerShell desde la Windows Terminal
Se puede acceder desde la línea de comando con pwsh.exe. Esta es una configuración necesaria para mis IDEs.

#### Instalar NerdFonts
Para se muestren todos los caracteres de posh, es necesario descargar fuentes especiales. https://www.nerdfonts.com/font-downloads. Generalmente uso Caskaydia Cove.

Luego, se tiene que configurar la fuente en Windows Terminal.

#### Install Oh-My-Posh
Esto se debe correr en la terminal donde se quiere tener la configuración, en la mayoría de casos pwsh.
```PowerShell
winget install JanDeDobbeleer.OhMyPosh
```
Se puede probar corriendo `oh-my-posh.exe`.

#### Descargar Intelisense
Esto se debe correr en la terminal donde se quiere tener la configuración, en la mayoría de casos pwsh.
```PowerShell
Install-Module PSReadLine
```


#### Importar el perfil de configuración
```cmd
mklink %userprofile%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 %userprofile%\dotFiles\pwsh_profile.ps1
```

### Para Linux
#### Descargar zsh
```bash
sudo apt-get install zsh
```

#### Install oh-my-zsh
Tiene un montón de temas y extensiones de paso. No es necesario poner a zsh como default, porque aquí lo podés hacer:
```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

#### Autosuggestions
Es para que autocomplete varios comandos de Linux.
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### Syntax-Hight-Lighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### Copiar .zshrc
```bash
ln -s ~/dotFiles/.zshrc ~/.zshrc
```

## Jetbrains
### Extensiones
Por alguna razón no me funciona bien la extensión para sincronizar extensiones. Aquí van los paquetes que uso:
- Acejump
- Atom Icons
- Dark Purple Theme
- Discord Integration
- Eevee Progress Bar
- GitToolBox
- IdeaVim
- IdeaVim-EasyMotion
- TestData
- What The Commit

### IdeaVim
Para Windows:
```cmd
mklink %userprofile%\.ideavimrc %userprofile%\dotFiles\.vim_config
```

Para Linux:
```bash
ln -s ~/dotFiles/.vim_config ~/.ideavimrc
```

## Neovim
Para que funcione bien es necesario tener instalado vim-plug.
```cmd
mklink %userprofile%\AppData\Local\nvim\init.vim %userprofile%\dotFiles\.vim_config
```

Para Linux:
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/dotFiles/.vim_config ~/.config/nvim/init.vim
```

## VsCode
No lo utilizo mucho, pero igual quiero tener mi configuración compartida. 
```cmd
mklink %userprofile%\AppData\Roaming\Code\User\settings.json %userprofile%\dotFiles\vscode.settings.json
```
TODO, verlo en Linux y las extensiones.
