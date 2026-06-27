zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTCONTROL=ignoreboth

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

GIT_PS1_SHOWUPSTREAM=yes
GIT_PS1_SHOWDIRTYSTATE=yes
GIT_PS1_SHOWSTASHSTATE=yes
GIT_PS1_SHOWUNTRACKEDFILES=yes
GIT_PS1_SHOWCONFLICTSTATE=yes
GIT_PS1_SHOWCOLORHINTS=yes

. ~/.config/git/.git-prompt.sh

setopt autocd
setopt PROMPT_SUBST ; PS1='%F{green}%n%f %F{red}%c%f$(__git_ps1 " (%s)") ❯ '
