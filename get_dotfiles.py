#!/usr/bin/env python3

import os  # Import the os module for interacting with the operating system
import shutil  # Import the shutil module for file operations

# Home directory
home_dir = os.path.expanduser("~")  # Get the path of the user's home directory

# Bash dotfiles directory
bash_dotfiles_dir = os.path.expanduser("~/.dotfiles/bash")  # Get the path of the bash dotfiles directory

# List of bash files to copy
bash_files_to_copy = [".bashrc", ".bashrc_custom", ".bash_aliases"]  # Create a list of bash files to copy

# Copy each file from home directory to dotfiles directory
for file_name in bash_files_to_copy:  # Iterate through each bash file
    source_file = os.path.join(home_dir, file_name)  # Get the source file path
    destination_file = os.path.join(bash_dotfiles_dir, file_name)  # Get the destination file path
    shutil.copyfile(source_file, destination_file)  # Copy the file from source to destination

# Vim dotfiles directory
vim_dotfiles_dir = os.path.expanduser("~/.dotfiles/vim")  # Get the path of the vim dotfiles directory

# List of vim files to copy
vim_files_to_copy = [".vimrc"]  # Create a list of vim files to copy
for file_name in vim_files_to_copy:  # Iterate through each vim file
    source_file = os.path.join(home_dir, file_name)  # Get the source file path
    destination_file = os.path.join(vim_dotfiles_dir, file_name)  # Get the destination file path
    shutil.copyfile(source_file, destination_file)  # Copy the file from source to destination