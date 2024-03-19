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
nnoremap gl gt
nnoremap gh gT

nnoremap gH <C-w>h
nnoremap gJ <C-w>j
nnoremap gK <C-w>k
nnoremap gL <C-w>l

"" move tabs themselves
nnoremap <leader>l :tabm+1<CR>
nnoremap <leader>h :tabm-1<CR>

nnoremap <leader>s :vsp<cr>
nnoremap <leader>S :sp<cr>


let g:highlightedyank_highlight_duration = "150"
let g:highlightedyank_highlight_color = "rgba(160, 160, 160, 90)"

