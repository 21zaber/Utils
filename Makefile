

python-vim:
	(                                                                                 			\
	apt install vim cmake python-dev python3-dev  libclang-3.8-dev                           && \
	(                                                                                 			\
		mkdir ~/.vim-backup                                                        			 && \
		mv ~/.vimrc ~/.vim-backup/                                                           && \
		mv ~/.vim ~/.vim-backup/                                               				    \
	) || true                                                                         		 && \
	cp pyvim/vimrc ~/.vimrc                                                            	   	 && \
	(git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || true) && \
	vim +PluginInstall +qall                                                          		 && \
	~/.vim/bundle/YouCompleteMe/install.sh --clang-completer                                    \
	)


install:                                
	(                                                             \
	apt install mercurial vim wireshark                        && \
	apt install python3 python3-pip ipython3 ipython3-notebook && \
	apt install python python-pip ipython ipython-notebook        \
	)



