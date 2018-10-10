

python-vim:
	(                                                                                           \
	sudo apt install vim cmake python-dev python3-dev  libclang-3.8-dev                           && \
	(                                                                                           \
		mkdir ~/.vim-backup                                                              && \
		mv ~/.vimrc ~/.vim-backup/                                                       && \
		mv ~/.vim ~/.vim-backup/                                                            \
	) || true                                                                                && \
	cp pyvim/vimrc ~/.vimrc                                                                  && \
	(git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || true) && \
	vim +PluginInstall +qall                                                                 && \
	~/.vim/bundle/YouCompleteMe/install.sh --clang-completer                                    \
	)

vim-short:
	cp vimrc_short ~/.vimrc

install:                                
	(                                                                  \
	sudo apt install mercurial vim wireshark                        && \
	sudo apt install python3 python3-pip ipython3                   && \
	sudo apt install python python-pip ipython                      && \
	sudo pip install notebook                                       && \
	sudo pip3 install notebook                                      && \
	echo '  '                                                          \
	)



