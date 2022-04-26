[install]
wget https://nodejs.org/dist/v14.17.1/node-v14.17.1-linux-x64.tar.xz
xz -d node-v14.17.1-linux-x64.tar.xz
tar -xvf node-v14.17.1-linux-x64.tar

[env set]
nvim ~/.zshrc

add in the tail
export NODE_HOME=/home/workspaces/node-v14.17.1-linux-x64
export PATH=$PATH:$NODE_HOME/bin
export NODE_PATH=$NODE_HOME/lib/node_modules
