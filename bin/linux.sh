#!/bin/bash

# check the operating system type is 'Linux'
result=$(uname -s)
OS=($result)

TYPE="Linux"

if [ "$OS" == "$TYPE" ]; then
	echo "Great! The operating system type is Linux!"
else
	echo "The operating system type is not Linux." >> linuxsetup.log
	exit
fi

# Create the ‘.TRASH’ directory in home directory if it doesn’t exist already
mkdir -p ~/.TRASH

# if ‘.vimrc’ file exists in home directory, change its name to ‘.bup vimrc’ & dump a message to ‘linuxsetup.log’
# saying that the current .vimrc file was changed to ‘.bup vimrc’.
# https://github.com/s7117/.dotfiles/blob/main/bin/ubuntu.sh

if [ -f "~/.vimrc" ]; then
	echo "LOG --> Found existing .vimrc file! Saving backup!"
	mkdir ~/.vimrc_bups
	cp ~/.vimrc ~/.vimrc_bups/.bup.vimrc
	# Delete old .vimrc
    	rm "~/.vimrc"
	echo "The current '.vimrc' file was changed to '.bup_vimrc'." >> linuxsetup.log
else
	echo ".vimrc not found" >> linuxsetup.log
fi


# Redirect (overwrite) the contents of the etc/vimrc file to a file called ‘.vimrc’ (with the dot in front) in home directory
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

# Add the statement ‘source ∼/.dotfiles/etc/bashrc custom’ to the end of the .bashrc file located in home directory.
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc


