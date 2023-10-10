source ~/dotFiles/shells/zsh/simplest.zsh

plugins+=(fzf)

fls() {
	fdfind . $1 --hidden --follow --exclude ".git" --type f | fzf --preview "batcat --color=always --style=numbers --line-range=:500 {}"
}

export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
export FZF_DEFAULT_COMMAND='fdfind --hidden --follow --exclude ".git" --type f --strip-cwd-prefix'


alias view='batcat --paging=always'
alias bat='batcat'
alias fd='fdfind'

if [[ $ZSH_EVAL_CONTEXT == 'file' ]]; then
    source $ZSH/oh-my-zsh.sh
fi
