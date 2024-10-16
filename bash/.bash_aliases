#!/usr/bin/env bash
# check for installed colordiff, rsync and vim
alias cpv='rsync -ah --info=progress2'
alias df='df -H'
alias diff='colordiff'
alias du='du -ch'
alias edit='vim'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias k='kubectl'
alias ll='ls -lh --color=auto'
alias ln='ln -i'
alias ls='ls --color=auto -F'
alias lt='ls --color=auto --human-readable --size -1 -S --classify'
alias mount='mount |column -t'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias nowtime='now'
alias path='echo -e ${PATH//:/\\n}'
alias va='source ./venv/bin/activate'
alias ve='python3 -m venv ./venv'

# Alias's to modified commands
alias cp='cp -i'
alias less='less -R'
alias mkdir='mkdir -pv'
alias multitail='multitail --no-repeat -c'
alias mv='mv -i'
alias ping='ping -c 10'
alias svi='sudo vi'
alias vi='vim'
alias vis='vim "+set si"'

# Top running 10 processes
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias mountedinfo='df -hT'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
