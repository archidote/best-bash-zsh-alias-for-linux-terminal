#!/bin/bash
cat >> $HOME/.bashrc << EOF
# alias added by bestAliasLinux (Brlndtech Edit)  
alias 1='apt update && apt upgrade'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias 2='apt autoremove && apt purge'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias p='ping'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias c='clear'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias e='exit'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias uu='apt update && apt upgrade'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias jj='apt autoremove'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias ai='apt install'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ap='apt purge'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias l='ls -alt'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias cdh='cd $HOME'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias f='find -name $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias fr='find / -name $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ..='cd ..'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias b='cd -'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias cda='cd /var/www/html'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias Gc='git clone $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ga='git add .'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias gpom='git push origin master'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias gpo='git push origin $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias sr='systemctl restart $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias sss='systemctl status $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ssss='systemctl start $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias stp='systemctl stop $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias se='systemctl enable $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ch='hostnamectl set-hostname $1'

# alias added by bestAliasLinux (Brlndtech Edit) 
alias s='sudo su'
EOF
source $HOME/.bashrc
echo -e "\e[92mDone, please open a new terminal tab, to run the added aliases\e[39m"

