#!/bin/bash
cat >> $HOME/.bashrc << EOF
# alias added by bestAliasLinux (Brlndtech Edit)  
alias 1='sudo apt update && apt upgrade'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias 2='sudo apt autoremove && apt purge'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias p='sudo ping'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias c='sudo clear'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias e='sudo exit'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias uu='sudo apt update && apt upgrade'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias jj='sudo apt autoremove'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias ai='sudo apt install'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ap='sudo apt purge'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias l='sudo ls -alt'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias cdh='sudo cd $HOME'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias f='sudo find -name $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias fr='sudo find / -name $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ..='sudo cd ..'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias b='sudo cd -'
 
# alias added by bestAliasLinux (Brlndtech Edit)  
alias cda='sudo cd /var/www/html'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias Gc='sudo git clone $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ga='sudo git add .'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias gs='sudo git status'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias gpom='sudo git push origin master'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias gpo='sudo git push origin $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias sr='sudo systemctl restart $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias sss='sudo systemctl status $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ssss='sudo systemctl start $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias stp='sudo systemctl stop $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias se='sudo systemctl enable $1'

# alias added by bestAliasLinux (Brlndtech Edit)  
alias ch='sudo hostnamectl set-hostname $1'

# alias added by bestAliasLinux (Brlndtech Edit) 
alias s='sudo sudo su'

# alias added by bestAliasLinux (Brlndtech Edit) 
alias coder='sudo code --user-data-dir'

# alias added by bestAliasLinux (Brlndtech Edit) 
alias pi='sudo ping 1.1.1.1'

# alias added by bestAliasLinux (Brlndtech Edit) 
alias pii='sudo ping t.co'

EOF
source $HOME/.bashrc
echo -e "\e[92m it's ok $USER, please open a new terminal tab, to run the added aliases\e[39m"

