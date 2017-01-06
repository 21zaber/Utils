

python-vim:
	(                                                                                 \
	apt install vim                                                                && \
	mkdir ~/.vim-backup                                                            && \
	mv ~/.vimrc ~/.vim-backup/                                                     && \
	mv ~/.vim ~/.vim-backup/                                                       && \
	cp pyvim/.vimrc ~/.vimrc                                                       && \
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
	vim +PluginInstall +qall                                                          \
	)


install:                                
	(                                                             \
	apt install mercurial vim wireshark                        && \
	apt install python3 python3-pip ipython3 ipython3-notebook && \
	apt install python python-pip ipython ipython-notebook        \
	)



