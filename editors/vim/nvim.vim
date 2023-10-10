let NERDTreeShowHidden=1
colorscheme pablo

source ~/dotFiles/editors/vim/common.vim

let g:plugins += [
	\ 'jiangmiao/auto-pairs',
	\ 'vim-airline/vim-airline',
	\ 'vim-airline/vim-airline-themes',
	\ 'Yggdroot/indentLine',
	\ 'ryanoasis/vim-devicons',
\]

call RunPlugins()

