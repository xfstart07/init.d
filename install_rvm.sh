#!/usr/bin/env bash

echo "Install RVM"

\curl -sSL https://get.rvm.io | bash -s stable --ignore-dotfiles

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >>~/.bashrc
source ~/.bashrc

source ~/.rvm/scripts/rvm

rvm install 2.2.3
rvm use 2.2.3 --default
