let mapleader = " "
set timeoutlen=400

"" Regular config
set scrolloff=5
set incsearch
set visualbell
set relativenumber
set number
set incsearch
set ignorecase
set smartcase
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

"" tab movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>s :vsp<cr>
nnoremap <leader>S :sp<cr>

