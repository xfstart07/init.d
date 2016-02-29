curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm"' >>~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >>~/.bashrc
