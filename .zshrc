# ls
alias ll="ls -al"

# vim
export EDITOR="vim"
alias v="vim"
set -o vi
bindkey -v

# diff 
alias diff="git diff --color"

# tmux 
alias tl="tmux ls"
alias tn="tmux new-session -s"
alias ta="tmux attach-session -t"
alias td="tmux kill-session -t"


# path 
export PATH=$PATH
# export PATH=$PATH:~/.bin

# environment
# neofetch
uname -a
