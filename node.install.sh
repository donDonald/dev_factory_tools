#!/bin/bash

C_LOG_PREFIX="$C_LOG_PREFIX.node"
echo "$C_LOG_PREFIX: Installing node..."

INSTALLED=$(dpkg -l | grep -E '^ii' | grep nodejs | wc -l)

if [ "$INSTALLED" -gt "0" ]; then
    echo "$C_LOG_PREFIX: node is already installed, leaving."
else
    cd ./node/

    echo "Current npm:$(which npm); $(npm --version)"
    echo "Current node:$(which node); $(node --version)"

#   tar -xf node-v6.9.2-linux-x64.tar.gz --directory /usr/local --strip-components 1
#   tar -xf node-v10.18.1-linux-x64.tar.gz --directory /usr/local --strip-components 1
#   tar -xf node-v12.14.1-linux-x64.tar.gz --directory /usr/local --strip-components 1
    tar -xf node-v14.16.1-linux-x64.tar.gz --directory /usr/local --strip-components 1


    echo "New npm:$(which npm); $(npm --version)"
    echo "New node:$(which node); $(node --version)"

    npm install -g mocha assert

    echo "$C_LOG_PREFIX: Installing node is complete."
fi

##########
#https://github.com/nodejs/help/issues/418
#    wget https://nodejs.org/dist/v6.9.2/node-v6.9.2-linux-x64.tar.gz
#    tar -xf node-v6.9.2-linux-x64.tar.gz --directory /usr/local --strip-components 1
