autoload -Uz compinit
compinit

# Load Angular CLI autocompletion.
# source <(ng completion script)

alias ls='ls --color=auto'
alias ll='ls --all -l --classify'
alias github='xdg-open https://github.com'
alias dot='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
alias dev='cd $HOME/Projects'
alias ..='cd ..'

GIT_PS1_SHOWUPSTREAM=yes
GIT_PS1_SHOWDIRTYSTATE=yes
GIT_PS1_SHOWSTASHSTATE=yes
GIT_PS1_SHOWUNTRACKEDFILES=yes
GIT_PS1_SHOWCONFLICTSTATE=yes
GIT_PS1_SHOWCOLORHINTS=yes

. ~/git-prompt.sh

setopt PROMPT_SUBST ; PS1='%F{green}%n%f%F{yellow}@%m%f %F{red}%c%f$(__git_ps1 " (%s)")\$ '