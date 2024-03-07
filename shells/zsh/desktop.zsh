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

alias s="kitty +kitten ssh"
source ~/.config/op/plugins.sh

# For Android Development
export ANDROID_HOME="/home/mendez/Android/Sdk"
export JAVA_HOME="/home/mendez/.local/share/JetBrains/Toolbox/apps/intellij-idea-ultimate/jbr"
export ANDROID_PLATFORM_TOOLS="/home/mendez/Android/Sdk/platform-tools"
export JBR="/home/mendez/.local/share/JetBrains/Toolbox/apps/android-studio/jbr/bin"
export ANDROID_CMD_TOOLS="/home/mendez/Android/Sdk/cmdline-tools/latest/bin"
export ANDROID_EMULATOR="/home/mendez/Android/Sdk/emulator"

export PATH=$JBR:$PATH:$ANDROID_PLATFORM_TOOLS:$ANDROID_CMD_TOOLS:$ANDROID_EMULATOR


