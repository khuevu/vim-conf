#!/bin/bash
#setup symlink
ln -vs ~/devtools/vim-conf/.vimrc ~/.vimrc
ln -vs ~/devtools/vim-conf/.vim ~/.vim
cd ~/devtools/vim-conf/.vim/bundle/command-t
rake make


