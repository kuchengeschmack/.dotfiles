GIT_PS1_SHOWUPSTREAM=yes
GIT_PS1_SHOWDIRTYSTATE=yes
GIT_PS1_SHOWSTASHSTATE=yes
GIT_PS1_SHOWUNTRACKEDFILES=yes
GIT_PS1_SHOWCONFLICTSTATE=yes
GIT_PS1_SHOWCOLORHINTS=yes

. $XDG_CONFIG_HOME/git/.git-prompt.sh

alias ls='ls --color=always'
alias la='ls -a'
alias ll='la -l'
alias github='xdg-open https://github.com'
alias dot='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
alias ..='cd ..'
alias hx='helix'

dev(){
  if [ -n "$1" ]; then
    cd $HOME/Projects/*$1*
  else
    cd $HOME/Projects
  fi
}
