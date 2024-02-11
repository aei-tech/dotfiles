#!/usr/bin/env bash

# Bash
mkdir -p ~/.dotfiles/bash
rsync ~/.bashrc ~/.bashrc_custom ~/.bash_aliases ~/.dotfiles/bash/

# Vim
mkdir -p ~/.dotfiles/vim
rsync ~/.vimrc ~/.vim ~/.dotfiles/vim/