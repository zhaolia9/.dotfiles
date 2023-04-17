# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## ./bin/cleanup.sh
cleanup.sh removes the .vimrc file from the home directory and removes the last line within the .bashrc file that is the path to bashrc_custom. It also removes the .TRASH directory that is in the home directory.

## ./bin/linux.sh
linux.sh checks to see if the operating system is Linux. If not, it dumps an error message into the linuxsetup.log file and then exits the terminal. 
It renames .vimrc to .bup_vimrc and brings the contents of etc/.vimrc into a new .vimrc in the home directory. 
Finally, it adds the path of bashrc_custom to the end of the .bashrc file in the home directory.

## ./etc/bashrc_custom
bashrc_custom contains of custom aliases and functions that makes things easier in shell.

There are various aliases that helps with simplifying the process of accessing the unix/linux lab. There are also functions to tarball and un-tarball files/directories.

## ./etc/vimrc
vimrc is a custom set of instructions that the vim program uses as default.

## ./.gitignore
.gitignore tells Git to ignore certain files or directories.
It prevents files and directories from being tracked by Git and are not pushed to GitHub.

## ./Makefile
Makefile contains the targets: linux and clean.
linux runs linux.sh while clean runs cleanup.sh

## For future reference
tar -C nested -zcvf outputfile.tar.gz intputdir/
compress files
This command first searches for any directories inside the outer directory and tarballs the files inside the directories inside the outer directory.
tar -C nested -xvf outputfile.tar.gz

extract files
This command first searches for any directories inside the outer directory and extracts the files inside the directories inside the outer directory.
