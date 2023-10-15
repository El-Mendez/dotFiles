let NERDTreeShowHidden=1

source ~/dotFiles/editors/vim/common.vim

let g:plugins = [
	\ 'tpope/vim-commentary',
        \ 'tpope/vim-surround',
        \ 'preservim/nerdtree',
        \ 'tommcdo/vim-exchange',
	\ 'jiangmiao/auto-pairs',
	\ 'vim-airline/vim-airline',
	\ 'vim-airline/vim-airline-themes',
	\ 'Yggdroot/indentLine',
	\ 'ryanoasis/vim-devicons',
	\ 'folke/tokyonight.nvim',
\ ]

let g:airline_theme= 'deus'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


if has("unix")
	call plug#begin('~/.config/nvim/plugged')
else
	call plug#begin('~/AppData/Local/nvim/plugged')
endif

for plugin in g:plugins
	Plug plugin
endfor
call plug#end()


colorscheme tokyonight-night
