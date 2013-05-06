#!/bin/sh

echo "Install RVM"
echo "...............begin.................."
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >>~/.bash_profile
source ~/.bash_profile
echo ""
echo"source ~/.bashrc"
echo "rvm pkg install readline"
echo "rvm install 1.9.3"
echo "rvm use 1.9.3 --default"
echo ""
echo "...............end....................."
