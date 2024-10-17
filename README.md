# dotfiles

## Specific READMEs can be found in the respective folders

This is the dotfiles repo.

- [README](README.md)
- [bash](bash)
- [git](git)
- [tmux](tmux)
- [vim](vim)

For example, for bash and vim, the respective configuration files are also stored in the folders to create a certain basic structure and not to have everything in the root directory.

## How the files are created

The respective files are copied locally from the source to the target directories in the dotfiles repo using get_dotfiles.py.

## How to customize the configurations

The configurations in the file `bash/.bashrc` and `vim/.vimrc` are adjusted

## How to restore the configuration files

To restore the files from the dotfiles repo, you can use `set_dotfiles.py`. This copies the files to the source in the home directory.

## Install brew packages

```bash
xargs brew install < brew_programs_list.txt
```

## Export installed brew packages

```bash
brew list > brew_installed.txt
```
