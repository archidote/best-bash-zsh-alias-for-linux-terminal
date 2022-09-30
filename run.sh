#!/bin/bash
aliases=$(cat <<EOF
# start_bestAliasLinux
# alias added by bestAliasLinux   
alias 1="sudo apt update && apt upgrade"
 
# alias added by bestAliasLinux   
alias 2="sudo apt autoremove && apt purge"
 
# alias added by bestAliasLinux   
alias p="ping"
 
# alias added by bestAliasLinux   
alias c="clear"

# alias added by bestAliasLinux   
alias d="date"
 
# alias added by bestAliasLinux   
alias e="exit"
 
# alias added by bestAliasLinux   
alias uu="sudo apt update && apt upgrade"

# alias added by bestAliasLinux   
alias jj="sudo apt autoremove"
 
# alias added by bestAliasLinux   
alias ai="sudo apt install"

# alias added by bestAliasLinux   
alias nn="sudo apt purge"
 
# alias added by bestAliasLinux   
alias l="ls -alt"

# alias added by bestAliasLinux   
alias h="history"

# alias added by bestAliasLinux   
alias h-="history | grep "\$1""

# alias added by bestAliasLinux   
alias fn="sudo find / -name \$1"

# alias added by bestAliasLinux   
alias ..="cd .."

# alias added by bestAliasLinux   
alias b="cd -"
 
# alias added by bestAliasLinux   
alias cdw="cd /var/www/html/"

# alias added by bestAliasLinux   
alias cdl="cd /var/log/"

# alias added by bestAliasLinux   
alias Gc="git clone \$1"

# alias added by bestAliasLinux   
alias ga="git add ."

# alias added by bestAliasLinux   
alias gs="git status"

# alias added by bestAliasLinux   
alias gpom="git push origin master"

# alias added by bestAliasLinux   
alias gpo="git push origin \$1"

# alias added by bestAliasLinux   
alias sr="sudo systemctl restart \$1"

# alias added by bestAliasLinux   
alias sss="sudo systemctl status \$1"

# alias added by bestAliasLinux   
alias strt="sudo systemctl start \$1"

# alias added by bestAliasLinux   
alias stp="sudo systemctl stop \$1"

# alias added by bestAliasLinux   
alias se="sudo systemctl enable \$1"

# alias added by bestAliasLinux   
alias ch="sudo hostnamectl set-hostname \$1"

# alias added by bestAliasLinux  
alias s="sudo su"

# alias added by bestAliasLinux  
alias pi="ping 1.1.1.1"

# alias added by bestAliasLinux  
alias pii="ping t.co"

# alias added by bestAliasLinux  
alias dlc="docker ps"

# alias added by bestAliasLinux  
alias dlca="docker ps -a"

# alias added by bestAliasLinux  
alias ds="docker start \$1"

# alias added by bestAliasLinux  
alias dss="docker stop \$1"

# alias added by bestAliasLinux  
alias de="docker exec -it \$1"

# alias added by bestAliasLinux  
alias dr="docker run -d \$1"

# alias added by bestAliasLinux  
alias dli="docker images"

# alias added by bestAliasLinux  
alias google="xdg-open 'https://www.google.fr/search?q='$(echo $1 | tr ' ' '+') > /dev/null &"

# alias added by bestAliasLinux  
alias o='xdg-open'

# alias added by bestAliasLinux  
alias m='make re && make clean'

# alias added by bestAliasLinux  
alias new='gnome-terminal'

# alias added by bestAliasLinux  
alias diskspace="du -S | sort -n -r | more"

# end_bestAliasLinux
EOF
)
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please choose one of them : bash or zsh"
elif [ "$1" == "bash" ]; then
    shift
    echo "${aliases}" >> $HOME/.bashrc
    source $HOME/.bashrc
    echo "Done, open a new terminal"
elif [ "$1" == "zsh" ]; then
    shift
    echo "${aliases}" >> $HOME/.zshrc
    source $HOME/.zshrc
    echo "Done, open a new terminal"
fi

