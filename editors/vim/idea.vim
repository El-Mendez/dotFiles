source ~/dotFiles/editors/vim/common.vim

nmap <leader>h <Action>(PreviousTab)
nmap <leader>l <Action>(NextTab)

nmap <leader>q <Action>(CloseEditor)
nmap <leader>Q <Action>(CloseActiveTab)

nmap <leader>o <Action>(GotoDeclaration)
nmap <leader>k <Action>(QuickJavaDoc)

"" Para errores
nmap <leader>e <Action>(ShowErrorDescription)
nmap ge <Action>(GotoNextError)
nmap gE <Action>(GotoPreviousError)
nmap <leader>cw <Action>(RenameElement)

"" Para debug
nmap <leader>D <Action>(Debug)
nmap <leader>d <Action>(ToggleLineBreakpoint)

nmap <leader>r <Action>(Run)

RunPlugins()
