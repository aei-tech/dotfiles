#!/usr/bin/env python3

import os
import shutil

# Home directory
home_dir = os.path.expanduser("~")

##############################################################################
### BASH ###
##############################################################################
# Bash dotfiles directory
bash_dotfiles_dir = os.path.expanduser("~/dotfiles/bash")

# List of bash files to copy
bash_files_to_copy = [".bashrc", ".bashrc_custom", ".bash_aliases"]

# Copy each file from home directory to dotfiles directory
for file_name in bash_files_to_copy:
    source_file = os.path.join(home_dir, file_name)
    destination_file = os.path.join(bash_dotfiles_dir, file_name)
    shutil.copyfile(source_file, destination_file)

##############################################################################
### VIM ###
##############################################################################
# Vim dotfiles directory
vim_dotfiles_dir = os.path.expanduser("~/dotfiles/vim")

# List of vim files to copy
vim_files_to_copy = [".vimrc"]
for file_name in vim_files_to_copy:
    source_file = os.path.join(home_dir, file_name)
    destination_file = os.path.join(vim_dotfiles_dir, file_name)
    shutil.copyfile(source_file, destination_file)

##############################################################################
### FISH ###
##############################################################################
fish_dotfiles_dir = os.path.expanduser("~/dotfiles/fish")
fish_config_dir = os.path.join(home_dir, ".config/fish")

# List of fish files to copy
fish_files_to_copy = ["config.fish"]
for file_name in fish_files_to_copy:
    source_file = os.path.join(fish_config_dir, file_name)
    destination_file = os.path.join(fish_dotfiles_dir, file_name)
    shutil.copyfile(source_file, destination_file)

##############################################################################
### GIT ###
##############################################################################
git_dotfiles_dir = os.path.expanduser("~/dotfiles/git")

# List of git files to copy
git_files_to_copy = [".gitconfig"]
for file_name in git_files_to_copy:
    source_file = os.path.join(home_dir, file_name)
    destination_file = os.path.join(git_dotfiles_dir, file_name)
    shutil.copyfile(source_file, destination_file)

##############################################################################
### STARSHIP ###
##############################################################################
starship_dotfiles_dir = os.path.expanduser("~/dotfiles/starship")
starship_config_dir = os.path.join(home_dir, ".config")

# List of starship files to copy
starship_files_to_copy = ["starship.toml"]
for file_name in starship_files_to_copy:
    source_file = os.path.join(starship_config_dir, file_name)
    destination_file = os.path.join(starship_dotfiles_dir, file_name)
    shutil.copyfile(source_file, destination_file)

##############################################################################
### TMUX ###
##############################################################################
tmux_dotfiles_dir = os.path.expanduser("~/dotfiles/tmux")

# List of tmux files to copy
tmux_files_to_copy = [".tmux.conf"]
for file_name in tmux_files_to_copy:
    source_file = os.path.join(home_dir, file_name)
    destination_file = os.path.join(tmux_dotfiles_dir, file_name)
    shutil.copyfile(source_file, destination_file)
