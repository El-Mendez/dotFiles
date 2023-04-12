# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( 
	"agnoster" "cypher" "dstufft" "half-life" "gnzh"
	"steeef" "suvash" "ys"
)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(
	extract sudo z fzf thefuck
	zsh-autosuggestions zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
export HISTCONTROL=ignorespace

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
export FZF_DEFAULT_COMMAND='fdfind --hidden --follow --exclude ".git"'
export PATH=$PATH:$HOME/bin

alias fls='fzf --preview "batcat --color=always --style=numbers --line-range=:500 {}"'

alias view='batcat --paging=always'
alias bat='batcat'
alias fd='fdfind'
eval $(thefuck --alias argh)
