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
nnoremap <leader>y \"+y
vnoremap <leader>y \"+y
nnoremap <leader>p \"+p


"" Plugins
let g:plugins = [
	\ 'tpope/vim-commentary',
	\ 'tpope/vim-surround',
	\ 'preservim/nerdtree',
	\ 'tommcdo/vim-exchange',
\]

function RunPlugins()
	if has("unix")
		call plug#begin('~/.config/nvim/plugged')
	else
		call plug#begin('~/AppData/Local/nvim/plugged')
	endif

	for plugin in g:plugins
		Plug plugin
	endfor

	call plug#end()
endfunction


