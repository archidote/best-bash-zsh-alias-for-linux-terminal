#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied, please choose one of them: bash or zsh"
    exit 1
fi

if [ "$1" == "bash" ]; then
    sed -i '/start_bestAliasLinux/,/end_bestAliasLinux/d' "$HOME/.bashrc"
    if [ $? -eq 0 ]; then
        echo "Done! Open a new terminal and run: source ~/.bashrc"
    else
        echo "Unexpected error"
    fi
elif [ "$1" == "zsh" ]; then
    sed -i '/start_bestAliasLinux/,/end_bestAliasLinux/d' "$HOME/.zshrc"
    if [ $? -eq 0 ]; then
        echo "Done! Open a new terminal and run: source ~/.zshrc (in a zsh shell)"
    else
        echo "Unexpected error"
    fi
else
    echo "Invalid argument: $1. Please use 'bash' or 'zsh'."
    exit 1
fi
