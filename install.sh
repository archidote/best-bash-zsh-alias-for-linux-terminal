#!/bin/bash

alias_global=$(cat <<'EOF'

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
alias jr="sudo apt remove \$1"
alias jj="sudo apt autoremove"
alias ai="sudo apt install"
alias l="ls -alt"
alias h="history"
alias h-="history | grep \"\$1\""
alias fn="sudo find / -name \$1"
alias ..="cd .."
alias b="cd -"
alias cdw="cd /var/www/html/"
alias cdl="cd /var/log/"
alias Gc="git clone \$1"
alias ga="git add ."
alias gs="git status"
alias gpom="git push origin main"
alias gpo="git push origin \$1"
alias sr="sudo systemctl restart \$1"
alias sss="sudo systemctl status \$1"
alias strt="sudo systemctl start \$1"
alias stp="sudo systemctl stop \$1"
alias se="sudo systemctl enable \$1"
alias ch="sudo hostnamectl set-hostname \$1"
alias dlc="docker ps"
alias dlca="docker ps -a"
alias ds="docker start \$1"
alias dss="docker stop \$1"
alias dk="docker kill \$1"
alias de="docker exec -it \$1"
alias dr="docker run -d \$1"
alias drc="docker rm -f \$@"
alias dri="docker rmi -f \$@"
alias dli="docker images"
alias google="xdg-open 'https://www.google.fr/search?q='\$(echo \$1 | tr ' ' '+') > /dev/null &"
alias o="xdg-open"
alias m="make re && make clean"
alias new="gnome-terminal"
alias diskspace="du -S | sort -n -r | more"
alias mip="curl ifconfig.me/ip -4"
alias mipp="curl icanhazip.com -4"
alias mip6="curl ifconfig.me/ip -6"
alias mipp6="curl icanhazip.com -6"
alias venv="python3 -m venv venv"
alias av="source venv/bin/activate"
alias pir="python3 -m pip install -r requirements.txt"
alias dns='sudo sh -c "echo \"nameserver 1.1.1.1\nnameserver 8.8.8.8\" > /etc/resolv.conf"'
alias ipa='ip --brief --color a'
alias filer='nautilus . &'
alias be="base64 <<<"
alias bd="base64 -d <<<"
alias n="nano \$1"
alias src="source \"/home/\$USER/.\$(ps -p \$\$ | grep sh | awk '{print \$4}')rc\""

EOF
)

alias_zsh=$(cat <<'EOF'

### Zsh-specific options ###
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
export HISTSIZE=10000
export HISTFILESIZE=10000
########## end_bestAliasLinux ##########

EOF
)

alias_bash=$(cat <<'EOF'

### Bash-specific options ###
shopt -s histappend
export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=10000
export HISTFILESIZE=10000
########## end_bestAliasLinux ##########

EOF
)

if [ $# -eq 0 ]; then
    echo "No arguments supplied, please choose one of them: bash or zsh"
elif [ "$1" == "bash" ]; then
      echo "$alias_global" >> "$HOME/.bashrc"
      echo "$alias_bash" >> "$HOME/.bashrc"
    echo "Done! Open a new terminal or run: source ~/.bashrc"
elif [ "$1" == "zsh" ]; then
      echo "$alias_global" >> "$HOME/.zshrc"
      echo "$alias_zsh" >> "$HOME/.zshrc"
    echo "Done! Open a new terminal or run: source ~/.zshrc"
else
    echo "Unknown argument: $1 (expected bash or zsh)"
fi