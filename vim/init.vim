source ~/dotFiles/vim/common.vim

if has('ide')
    source ~/dotFiles/vim/idea.vim
else
    source ~/dotFiles/vim/nvim.vim
endif

