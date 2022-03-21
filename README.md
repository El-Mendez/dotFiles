# Dot Files
Me dio mucha pereza tener que estar va de sincronizar mis archivos en muchos lugares, así que mejor voy a poner toda mi configuración en línea. 

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
```PowerShell
winget install JanDeDobbeleer.OhMyPosh
```
Se puede probar corriendo `oh-my-posh.exe`.

#### Descargar Intelisense
```PowerShell
Install-Module PSReadLine
```


#### Importar el perfil de configuración
```PowerShell
mklink C:\Users\pablo\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 C:\Users\pablo\dotFiles\pwsh_profile.ps1
```

### Para Linux
TODO, no me acuerdo xd. Pero uso fish.

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
```PowerShell
mklink C:\Users\pablo\.ideavimrc C:\Users\pablo\dotFiles\.vim_config
```

Para Linux:
```bash
ln -s ~/.ideavimrc ~/dotFiles/.vim_config
```

## Neovim
Para que funcione bien es necesario tener instalado vim-plug.
```PowerShell
mklink C:\Users\user\AppData\Local\nvim\init.vim C:\Users\user\dotFiles\.vim_config
```

Para Linux:
```bash
ln -s ~/.config/nvim/.ideavimrc ~/dotFiles/.vim_config
```

## VsCode
No lo utilizo mucho, pero igual quiero tener mi configuración compartida. 
```PowerShell
mklink C:\Users\pablo\AppData\Roaming\Code\User\settings.json C:\Users\pablo\dotFiles\vscode.settings.json
```
TODO, verlo en Linux y las extensiones.