#!/bin/bash 
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please choose one of them : bash or zsh"
fi
if [ "$1" == "bash" ]; then
	sed -i '/start_/,/end_/d' $HOME/.bashrc
	if [ $? -eq 0 ]; then
	    echo "done, open a new terminal."
            source $HOME/.bashrc
	else
	    echo "fail for a unexpected reason"
	fi
elif [ "$1" == "zsh" ]; then 
	sed -i '/start_/,/end_/d' $HOME/.zshrc
	if [ $? -eq 0 ]; then
	    echo "done, open a new terminal"
            source $HOME/.zshrc
	else
	    echo "fail for a unexpected reason"
	fi
fi
