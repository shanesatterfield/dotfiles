#!/bin/bash

# Get path to the physical file, following symlinks if need be.
SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run install script
source $SRC_DIR/install.sh

function link() {
    MSG=$1
    SRC_FILE=$2
    TARGET_FILE=$3

    echo $MSG

    # Remove file if it exists
    if [ -f $SRC_FILE ]; then
        echo "Removing existing dot file at $SRC_FILE"
        rm $TARGET_FILE
    fi

    # Symlink files
    echo "Symlinking file $SRC_FILE to $TARGET_FILE"
    ln -s $SRC_FILE $TARGET_FILE
    echo ""
}

# Create symlinks to dotfiles
link "NeoVim"  $SRC_DIR/nvim/init.vim  ~/.config/nvim/init.vim
link "Vim"     $SRC_DIR/nvim/init.vim  ~/.vimrc
link "IdeaVim" $SRC_DIR/nvim/init.vim  ~/.ideavimrc

link "Zsh"     $SRC_DIR/zsh/zshrc      ~/.zshrc
link "Tmux"    $SRC_DIR/tmux/tmux.conf ~/.tmux.conf
