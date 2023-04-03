#!/bin/bash

# Remove the .vimrc file in your home directory
rm -f ~/.vimrc

# Remove the line ‘source ∼/.dotfiles/bashrc custom’ in your .bashrc file in your home directory. You can use the ‘sed’ command to accomplish this and replace ‘source ∼/.dotfiles/bashrc custom’ with nothing
# https://lagooko.blogspot.com/2016/01/how-to-delete-lines-using-sed-command.html
sed -i '$d' ~/.bashrc

# Remove the .TRASH directory inside of your home directory.
rm -r ~/.TRASH



