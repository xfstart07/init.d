VERSION="v0.31.0"
NODE='5.0'

curl -o- https://raw.githubusercontent.com/creationix/nvm/$VERSION/install.sh | bash

source ~/.bashrc
nvm install $NODE && nvm use $NODE 
