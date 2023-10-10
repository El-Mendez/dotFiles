let NERDTreeShowHidden=1

source ~/dotFiles/editors/vim/common.vim

let g:plugins += [
	\ 'jiangmiao/auto-pairs',
	\ 'vim-airline/vim-airline',
	\ 'vim-airline/vim-airline-themes',
	\ 'Yggdroot/indentLine',
	\ 'ryanoasis/vim-devicons',
	\ 'folke/tokyonight.nvim',
\]

let g:airline_theme= 'deus'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

call RunPlugins()

colorscheme tokyonight-night
