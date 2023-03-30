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

#Create the ‘.TRASH’ directory in your home directory if it doesn’t exist already
mkdir -p ~/.TRASH

#if the ‘.vimrc’ file exists in your home directory, change its name to ‘.bup vimrc’ and dump a message to ‘linuxsetup.log’ saying that the current .vimrc file was changed to ‘.bup vimrc’.

mv ~/.vimrc ~/.bup_vimrc
echo "The current '.vimrc' file was changed to '.bup_vimrc'." >> linuxsetup.log

#Redirect (overwrite) the contents of the etc/vimrc file to a file called ‘.vimrc’ (with the dot in front) in your home directory
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

#Add the statement ‘source ∼/.dotfiles/etc/bashrc custom’ to the end of the .bashrc file located in your home directory.
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc


