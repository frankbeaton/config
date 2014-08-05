#!/usr/bin/env bash

if [ ! -d $HOME/config-bak ]; then
	mkdir $HOME/config-bak
fi

mv $HOME/.bash* $HOME/.profile $HOME/.vim* $HOME/config-bak

ln -s $HOME/.bash_profile /projects/config/bash/bash_profile
ln -s $HOME/.bashrc /projects/config/bash/bashrc
ln -s $HOME/.profile /projects/config/bash/profile
ln -s $HOME/.colors /projects/config/bash/colors
ln -s $HOME/.vimrc /projects/config/vimrc.vim
ln -s $HOME/.vim /projects/config/vim

