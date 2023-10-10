# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"


export ZSH="$HOME/.oh-my-zsh"
export HISTCONTROL=ignorespace
export PATH=$PATH:$HOME/bin

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random" # set by `omz`
ZSH_THEME_RANDOM_CANDIDATES=( 
	"agnoster" "cypher" "dstufft" "half-life" "gnzh"
	"steeef" "suvash" "ys"
)

plugins=(
	extract sudo z
	zsh-autosuggestions zsh-syntax-highlighting
)

if [[ $ZSH_EVAL_CONTEXT == 'file' ]]; then
    source $ZSH/oh-my-zsh.sh
fi
