if status is-interactive
    # Commands to run in interactive sessions can go here
end

# export NEW_SESSION="tmux new-session -dP"

alias v="nvim"
alias vf="nvim (fzf)"
alias sv="sudo nvim"
alias svf="sudo nvim (fzf)"
alias l="ls -la"
alias gi="git"
alias gs="git status"
alias gaa="git add ."
alias gl="git log"
alias tn="tmux new -s $(pwd | sed 's/.*\///g')"
alias tnn="tmux switch-client -t $NEW_SESSION"
alias ta="tmux a"
