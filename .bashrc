. $XDG_CONFIG_HOME/sh/aliases

GIT_PS1_SHOWUPSTREAM=yes                          GIT_PS1_SHOWDIRTYSTATE=yes
GIT_PS1_SHOWSTASHSTATE=yes                        GIT_PS1_SHOWUNTRACKEDFILES=yes
GIT_PS1_SHOWCONFLICTSTATE=yes
GIT_PS1_SHOWCOLORHINTS=yes

. $XDG_CONFIG_HOME/scripts/git-prompt.sh

PS1='\[\e[32m\]\u\[\e[0m\] \[\e[31m\]\W\[\e[0m\]$(__git_ps1 " (%s)") > '
