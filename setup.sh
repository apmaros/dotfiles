#!/bin/bash

###
# setup
##

echo you are about to install core software. Continue with Return
echo installing Homebrew. This will install Xcode
echo it will take a while. Ensure the internet connection is fast enough
read

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# curl
brew install curl

# gpg
brew install gnupg

# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# jq
brew install jq

# tmux
brew install tmux

# python and pip
brew install python3

# conda python environment
brew cask install anaconda


# copy dotfiles
cp .gitconfig .tmux.conf .zshrc.local .vimrc $HOME

# install vundle - plugin manager for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# install gpg
brew install gnupg

# generate new gpg key
gpg --full-gen-key

# sign each git commit
git config --global commit.gpgsign true

# user correct gpg program
git config --global gpg.program $(which gpg)
echo "no-tty" >> ~/.gnupg/gpg.conf

echo will install ssh keys
email=read
ssh-keygen -t rsa -b 4096 -C $email
eval "$(ssh-agent -s)"
echo your key is $(cat $HOME/.ssh/id_rsa.pub)

reset
