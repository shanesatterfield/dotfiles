#!/bin/bash

# ==================
# | Basic Packages |
# ==================
sudo apt-get install -y curl openjdk-8-jdk gradle postgresql xclip powerline

# =======
# | Git |
# =======
sudo apt-get install -y git

# =======
# | Zsh |
# =======
sudo apt-get install -y zsh

# ==========
# | NeoVim |
# ==========
sudo add-apt-repository -y https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable
sudo apt-get install -y neovim

# NeoVim Plugin Manager (Vim-Plug)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ========
# | Tmux |
# ========
sudo apt-get install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# ==========
# | NodeJS |
# ==========
sudo apt-get install -y nodejs-legacy npm
sudo npm install -g npm
sudo npm install -g n
sudo n stable
