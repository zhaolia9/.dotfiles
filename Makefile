:set noexpandtab

#runs the ./bin/linux.sh script
linux: clean
	chmod 700 ~/.dotfiles/bin/linux.sh 
	~/.dotfiles/bin/linux.sh
#runs the ./bin/cleanup.sh
clean: 
	chmod 700 ~/.dotfiles/bin/cleanup.sh
	~/.dotfiles/bin/cleanup.sh

