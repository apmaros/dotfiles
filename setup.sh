#!/bin/bash
set -e

###
# setup
##

echo You are about to install core software using Homebrew.
echo It may install Xcode if not yet installed.
echo
echo Instalation will take a while. Ensure the internet connection is fast enough.
echo continue pressing Return
read

OSNAME=$(uname -s)

if [[ "$OSNAME" != "Darwin" ]]
then
  echo "Error: Only Mac device is supported"
  exit 1
fi

# check if M1 processor is used
if [[ $(uname -m) == 'arm64' ]]; then
  # pyenv install fails without these flags
  # https://github.com/pyenv/pyenv/issues/1877
  export LDFLAGS="-L/opt/homebrew/lib"; export CPPFLAGS="-I/opt/homebrew/include"
fi

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# link nad activate brew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# curl
brew install curl

# gpg
brew install gnupg

# zsh
brew install zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# jq
brew install jq

# tmux
brew install tmux

# ansible
brew install ansible

# better cat
brew install bat

# python and pip
echo "Installing python suite"
brew install pyenv
brew install pyenv-virtualenv
brew install virtualenv

echo "Installing python 3.12.2"
PYTHON_CURRENT_VERSION=3.12.2
# pyenv install $PYTHON_CURRENT_VERSION
# use this version globally
# pyenv global $PYTHON_CURRENT_VERSION

# copy dotfiles
cp .gitconfig .tmux.conf .zshrc.local .vimrc $HOME

# install vundle - plugin manager for Vim
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# install ssl
brew install openssl

# install gpg
brew install gnupg

# generate new gpg key
gpg --full-gen-key

# sign each git commit
git config --global commit.gpgsign true

# user correct gpg program
git config --global gpg.program $(which gpg)
echo "no-tty" >> ~/.gnupg/gpg.conf

echo "will install ssh keys"
echo "enter email"
email=read
ssh-keygen -t rsa -b 4096 -C $email
eval "$(ssh-agent -s)"

echo your key is $(cat $HOME/.ssh/id_rsa.pub)
echo "Instalation is finished, continue with any key to exit"
read

reset

