#!/bin/bash
if [ "$1" == "bash" ]; then
    cat >> $HOME/.bashrc << EOF
    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias 1='sudo apt update && apt upgrade'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias 2='sudo apt autoremove && apt purge'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias p='ping'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias c='clear'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias d='date'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias e='exit'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias uu='sudo apt update && apt upgrade'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias jj='sudo apt autoremove'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ai='sudo apt install'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias nn='sudo apt purge'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias l='sudo ls -alt'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias cdh='cd $HOME'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias f='sudo find -name $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias fn='sudo find / -name $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ..='sudo cd ..'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias b='cd -'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias cdw='cd /var/www/html'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias Gc='git clone $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ga='git add .'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias gs='git status'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias gpom='git push origin master'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias gpo='git push origin $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias sr='sudo systemctl restart $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias sss='sudo systemctl status $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias strt='sudo systemctl start $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias stp='sudo systemctl stop $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias se='sudo systemctl enable $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ch='sudo hostnamectl set-hostname $1'

    # alias added by bestAliasLinux (Brlndtech Edit) 
    alias s='sudo su'

    # alias added by bestAliasLinux (Brlndtech Edit) 
    alias pi='ping 1.1.1.1'

    # alias added by bestAliasLinux (Brlndtech Edit) 
    alias pii='ping t.co'

    EOF
    source $HOME/.bashrc
    echo -e "\e[92m it's ok $USER, please open a new terminal tab, to run the added aliases. (In specific cases, reboot your machine to apply changes) \e[39m"
else
    cat >> $HOME/.zshrc << EOF
    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias 1='sudo apt update && apt upgrade'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias 2='sudo apt autoremove && apt purge'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias p='ping'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias c='clear'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias d='date'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias e='exit'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias uu='sudo apt update && apt upgrade'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias jj='sudo apt autoremove'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ai='sudo apt install'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias nn='sudo apt purge'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias l='sudo ls -alt'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias cdh='cd $HOME'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias f='sudo find -name $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias fn='sudo find / -name $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ..='sudo cd ..'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias b='cd -'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias cdw='cd /var/www/html'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias Gc='git clone $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ga='git add .'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias gs='git status'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias gpom='git push origin master'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias gpo='git push origin $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias sr='sudo systemctl restart $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias sss='sudo systemctl status $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias strt='sudo systemctl start $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias stp='sudo systemctl stop $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias se='sudo systemctl enable $1'

    # alias added by bestAliasLinux (Brlndtech Edit)  
    alias ch='sudo hostnamectl set-hostname $1'

    # alias added by bestAliasLinux (Brlndtech Edit) 
    alias s='sudo su'

    # alias added by bestAliasLinux (Brlndtech Edit) 
    alias pi='ping 1.1.1.1'

    # alias added by bestAliasLinux (Brlndtech Edit) 
    alias pii='ping t.co'

    EOF
    source $HOME/.zshrc
    echo -e "\e[92m it's ok $USER, please open a new terminal tab, to run the added aliases. (In specific cases, reboot your machine to apply changes) \e[39m"
  fi
