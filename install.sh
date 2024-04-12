#!/bin/bash
aliases=$(cat <<EOF

########## start_bestAliasLinux ##########

alias p="ping"
alias pi="ping 1.1.1.1"
alias pii="ping t.co"
alias c="clear -x"
alias s="sudo su"
alias ccc="clear"
alias d="date"
alias e="exit"
alias uu="sudo apt update && apt upgrade"
alias jj="sudo apt autoremove"
alias ai="sudo apt install"
alias nn="sudo apt purge"
alias l="ls -alt"
alias h="history"
alias h-="history | grep "\$1""
alias fn="sudo find / -name \$1"
alias ..="cd .."
alias b="cd -"
alias cdw="cd /var/www/html/"
alias cdl="cd /var/log/"
alias Gc="git clone \$1"
alias ga="git add ."
alias gs="git status"
alias gpom="git push origin master"
alias gpo="git push origin \$1"
alias sr="sudo systemctl restart \$1"
alias sss="sudo systemctl status \$1"
alias strt="sudo systemctl start \$1"
alias stp="sudo systemctl stop \$1"
alias se='sudo systemctl enable \$1'
alias ch="sudo hostnamectl set-hostname \$1"
alias dlc="docker ps"
alias dlca="docker ps -a"
alias ds="docker start \$1"
alias dss="docker stop \$1"
alias dk="docker kill \$1"
alias de="docker exec -it \$1"
alias dr="docker run -d \$1"
alias drc="docker rm -f \$@"
alias dri="docker rmi -f\$@"
alias dli="docker images"
alias google="xdg-open 'https://www.google.fr/search?q='$(echo $1 | tr ' ' '+') > /dev/null &"
alias o="xdg-open"
alias m="make re && make clean"
alias new="gnome-terminal"
alias diskspace="du -S | sort -n -r | more"
alias mip="curl ifconfig.me/ip"
alias venv="python3 -m venv venv"
alias av="source venv/bin/activate"
alias pir="python3 -m pip install -r requirements.txt"
alias dns='sudo sh -c "echo '\''nameserver 1.1.1.1\nnameserver 8.8.8.8'\'' > /etc/resolv.conf"'
alias ipa='ip --brief --color a'
alias n='nautilus .'
alias x='xdg-open .'
alias be="base64 <<<"
alias bd="base64 -d <<<"
alias n="nano $1"
### global env ###
setopt share_history
export HISTSIZE=100000
export HISTFILESIZE=100000
######### end_bestAliasLinux ########## 

EOF
)
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please choose one of them : bash or zsh"
elif [ "$1" == "bash" ]; then
    shift
    echo "${aliases}" >> $HOME/.bashrc
    source $HOME/.bashrc 
    echo "Done ! Open a new terminal"
elif [ "$1" == "zsh" ]; then
    shift
    echo "${aliases}" >> $HOME/.zshrc 
    source $HOME/.zshrc 
    echo "Done ! Open a new terminal"
fi
