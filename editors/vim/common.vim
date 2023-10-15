let mapleader = " "
set timeoutlen=400

"" Regular config
set scrolloff=5
set incsearch
set visualbell
set relativenumber
set number
set incsearch
map Q gq

"" keybinds
imap kj <Esc>
vmap kj <Esc>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap ZS :w<cr>
nnoremap go :NERDTree<CR>

"" Clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p

