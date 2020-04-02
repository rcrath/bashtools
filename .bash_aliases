# ls tweaks: 
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
# list what the colors mean
alias lsc=$HOME/bin/bash/lscolor.sh 
# more tweaks
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
# less: make less show percentage of file read
alias less='less -m'     
# chdorf: chmod dirs to 755 or files to 644 (excluding scripts) recursively
alias chdorf=~/bin/bash/chdorf.sh    
#Arch Package system
# on setting up new linux: run once 'yay -Syyua --nodiffmenu --noeditmenu --noconfirm --save'
# update: update system, including AUR, rm old packages
alias update='yay -Syyu  && paccache -rk2 && paccache -ruk0'
# np: edit ./PKGBUILD if exist
alias np='nano PKGBUILD'
# fixit: remove pacman lock, update mirrors, then update
alias fixit='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu'

# Functions 
# ex - archive extractor
   # usage: ex <file>
# rmd: read markdown in a terminal
   # usage: rmd <file>

# lsalias: Last but not least, display this file (but you knew that one, right?)
alias lsalias='less -m -e -r --long-prompt ~/.bash_aliases'
