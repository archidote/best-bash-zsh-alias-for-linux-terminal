#!/bin/bash 
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please choose one of them : bash or zsh"
fi
if [ "$1" == "bash" ]; then
	sed -i '/start_bestAliasLinux/,/end_bestAliasLinux/d' $HOME/.bashrc 
	if [ $? -eq 0 ]; then
	    source $HOME/.bashrc  
	    echo "Done ! Open a new terminal" 
	else
	    echo "Unexpected error"
	fi
elif [ "$1" == "zsh" ]; then 
	sed -i '/start_bestAliasLinux/,/end_bestAliasLinux/d' $HOME/.zshrc 
	if [ $? -eq 0 ]; then
        source $HOME/.zshrc 
		echo "Done ! Open a new terminal" 
	else
	    echo "Unexpected error"
	fi
fi
