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
```PowerShell
winget install JanDeDobbeleer.OhMyPosh
```
Se puede probar corriendo `oh-my-posh.exe`.

#### Descargar Intelisense
```PowerShell
Install-Module PSReadLine
```


#### Importar el perfil de configuración
```cmd
mklink %userprofile%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 %userprofile%\dotFiles\pwsh_profile.ps1
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
mklink %userprofile%\.ideavimrc %userprofile%\dotFiles\.vim_config
```

Para Linux:
```bash
ln -s ~/.ideavimrc ~/dotFiles/.vim_config
```

## Neovim
Para que funcione bien es necesario tener instalado vim-plug.
```PowerShell
mklink %userprofile%\AppData\Local\nvim\init.vim %userprofile%\dotFiles\.vim_config
```

Para Linux:
```bash
ln -s ~/.config/nvim/.ideavimrc ~/dotFiles/.vim_config
```

## VsCode
No lo utilizo mucho, pero igual quiero tener mi configuración compartida. 
```PowerShell
mklink %userprofile%\AppData\Roaming\Code\User\settings.json %userprofile%\dotFiles\vscode.settings.json
```
TODO, verlo en Linux y las extensiones.