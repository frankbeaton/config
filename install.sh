#!/usr/bin/env bash

if [ ! -d $HOME/config-bak ]; then
	mkdir $HOME/config-bak
fi

mv $HOME/.bash* $HOME/.profile $HOME/.vim* $HOME/config-bak

ln -s $HOME/.bash_profile $HOME/Projects/config/bash/bash_profile
ln -s $HOME/.bashrc $HOME/Projects/config/bash/bashrc
ln -s $HOME/.profile $HOME/Projects/config/bash/profile
ln -s $HOME/.colors $HOME/Projects/config/bash/colors
ln -s $HOME/.vimrc $HOME/Projects/config/vimrc.vim
ln -s $HOME/.vim $HOME/Projects/config/vim

