#!/bin/bash
set -e

exec > >(tee -i $HOME/.dotfiles_install.log)
exec 2>&1
set -x

vim_path="$HOME/.vim/pack/plugins/start"
dotfiles_root=$(pwd)

if [ ! -s ~/.tmux.conf ]; then
  rm -rf ~/.tmux.conf && ln -s $dotfiles_root/tmux.conf ~/.tmux.conf
fi

if [ ! -s ~/.zshrc ]; then
  rm -rf ~/.zshrc && ln -s $dotfiles_root/zshrc ~/.zshrc
fi

if [ ! -d ~/.oh-my-zsh/lib ] then
  cp $dotfiles_root/editor.zsh ~/.oh-my-zsh/lib/
fi

if [ ! -s ~/.ctags.d ]; then
  rm -rf ~/.ctags.d && ln -s $dotfiles_root/ctags ~/.ctags.d
fi

function brewget {
  if brew ls --versions "$1"; then
    brew upgrade "$1"
  else
    brew install "$1"
  fi
}

function vimclone {
  repo=$(echo "$1" | cut -d'/' -f2)
  if [ ! -d "$vim_path/$repo" ]; then
    git clone --depth 1 "https://github.com/$1" "$vim_path/$repo"
  # else
  #   echo "$vim_path/$repo"
  #   (cd "$vim_path/$repo"; git pull)
  fi
}


# brewget "ag"
# brewget "tmux"

mkdir -p "$vim_path"
if [ ! -s ~/.vim/vimrc ]; then
  ln -s $dotfiles_root/vimrc ~/.vim/vimrc
fi
if [ ! -s ~/.vim/config ]; then
  ln -s $dotfiles_root/vim/config ~/.vim/config
fi

if [ -d ~/Programming/swift/utils/vim -a ! -s $vim_path/swift ]; then
  ln -s ~/Programming/swift/utils/vim $vim_path/swift
fi

vimclone "jlanzarotta/bufexplorer"
vim -u NONE -c "helptags bufexplorer/doc" -c q

vimclone "vim-airline/vim-airline"
vim -u NONE -c "helptags vim-airline/doc" -c q

vimclone "ctrlpvim/ctrlp.vim"
vimclone "preservim/nerdtree"
