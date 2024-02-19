#!/bin/bash

# Get path to the physical file, following symlinks if need be.
SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

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

# Make sure that the nvim config directory exists or else it will blow up the vim config.
mkdir -p ~/.config/nvim/

# Create symlinks to dotfiles
link "NeoVim"  $SRC_DIR/nvim/init.vim             ~/.config/nvim/init.vim
link "Vim"     $SRC_DIR/nvim/init.vim             ~/.vimrc
link "IdeaVim" $SRC_DIR/nvim/config/general.vimrc ~/.ideavimrc

link "CoC"     $SRC_DIR/nvim/coc-settings.json    ~/.config/nvim/coc-settings.json

link "Zsh"     $SRC_DIR/zsh/zshrc                 ~/.zshrc
link "Tmux"    $SRC_DIR/tmux/tmux.conf            ~/.tmux.conf


# Make sure software-properties-common is installed so you can run apt-add-repository.
# sudo apt-get install -y software-properties-common

# Run install script
if [[ $OSTYPE == 'darwin'* ]]; then
    echo "Installing Mac dependencies"

    # Install ansible for Mac
    brew install ansible

    ansible-playbook -i $SRC_DIR/ansible/inventory/hosts $SRC_DIR/ansible/playbooks/install-mac.yml --ask-become-pass
else
    # Install ansible for Ubuntu
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install ansible

    ansible-playbook -i $SRC_DIR/ansible/inventory/hosts $SRC_DIR/ansible/playbooks/install.yml --ask-become-pass
fi