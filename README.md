# Best alias for linux terminal 

*Save time, when you rush your terminal.*

shell script executing by <code>curl</code> to install a list of predefined alias for the current .bashrc/.zshrc user's. </br>

<b> Dont' forget to re-open a new terminal after script execution no matter the shell type</b>

# Install and and auto configure 

## bash
```
curl -sL https://raw.githubusercontent.com/archidote/best-alias-for-linux-terminal/master/install.sh | bash -s bash
```
## zsh
```
curl -sL https://raw.githubusercontent.com/archidote/best-alias-for-linux-terminal/master/install.sh | bash -s zsh > /dev/null 2>&1
```
<br>

# Delete 
## bash
If you want to delete the aliases added by this project, run : 
```
curl -sL https://raw.githubusercontent.com/archidote/best-alias-for-linux-terminal/master/delete.sh | bash -s bash
```
## zsh
If you want to delete the aliases added by this project, run :
```
curl -sL https://raw.githubusercontent.com/archidote/best-alias-for-linux-terminal/master/delete.sh | bash -s zsh > /dev/null 2>&1
```

<br>

# Update 

Delete, and re-run the inital setup with curl according to your shell type
