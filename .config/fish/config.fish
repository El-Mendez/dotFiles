if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source

    export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
    export FZF_DEFAULT_COMMAND='fdfind --hidden --follow --exclude ".git" --type f --strip-cwd-prefix'
end

abbr -a v nvim
abbr -a s kitty +kitten ssh

function mcd
  mkdir -p $argv[1] && cd $argv[1]
end

