source "$HOME/.tmux-gitbar/tmux-gitbar.tmux"

set -o vi -o noclobber

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL"
export PS1="$Y\t$N $W$N$PROMPT_COLOR$N:$C\w$N\n"'$CURSOR_PROMPT '
export alfred_version="4"

function vig {
    vi -O $(git show --format= --name-only)
}

function vis {
    vi -O $(g st -s -uno | grep -v D | cut -d ' ' -f3)
}

# AWS auto-completion
complete -C aws_completer aws
