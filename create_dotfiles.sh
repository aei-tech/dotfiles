#!/usr/bin/env bash

# Bash
rsync --include='.bashrc' --include='.bash_aliases' --include='.bashrc_custom' --exclude='*' ~/.dotfiles/bash/