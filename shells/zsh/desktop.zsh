source ~/dotFiles/shells/zsh/terminal.zsh

alert() {
	SOUND="/usr/share/sounds/Pop/stereo/notification/complete.oga"

	START=$SECONDS
	eval "$@"
	END=$SECONDS

	echo -e "\n\e[4m\e[1m > took $((END-START)) seconds. \e[0m"
	paplay "$SOUND"
	# spd-say "$@ done"
	
	zenity --notification --text "Command done: $@"
}

if [[ $ZSH_EVAL_CONTEXT == 'file' ]]; then
    source $ZSH/oh-my-zsh.sh
fi

export ANDROID_HOME="~/Android/Sdk"
alias s="kitty +kitten ssh"
source ~/.config/op/plugins.sh

