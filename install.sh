#!/bin/bash
#setup symlink - shouldn't need to do as now we use the dotfiles symlink integration
#ln -vs ~/devtools/vim-conf/.vimrc ~/.vimrc
#ln -vs ~/devtools/vim-conf/.vim ~/.vim

VIM_CONF_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $VIM_CONF_DIR
cd $VIM_CONF_DIR/vim.symlink/bundle/command-t
rake make


