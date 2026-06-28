source $XDG_CONFIG_HOME/.bash_aliases

zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTCONTROL=ignoreboth

setopt autocd
setopt PROMPT_SUBST ; PS1='%F{green}%n%f %F{red}%c%f$(__git_ps1 " (%s)") > '
