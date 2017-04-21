#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symlinks to dotfiles
ln -s $SRC_DIR/nvim/init.vim ~/.config/nvim/init.vim
ln -s $SRC_DIR/nvim/init.vim ~/.vimrc
ln -s $SRC_DIR/nvim/init.vim ~/.ideavimrc

ln -s $SRC_DIR/zsh/zshrc ~/.zshrc
ln -s $SRC_DIR/tmux/tmux.conf ~/.tmux.conf
