#!/bin/bash

C_LOG_PREFIX="$C_LOG_PREFIX.node"
echo "$C_LOG_PREFIX: Uninstalling node..."

apt-get purge nodejs npm

rm /usr/local/bin/node
rm /usr/local/bin/npm
rm -rf /usr/local/include/node
rm -rf /usr/local/lib/node_modules/
rm -rf /usr/local/share/doc/node/
rm -rf /share/man/man1/node.1
rm -rf /usr/local/share/systemtap/tapset/node.stp

echo "$C_LOG_PREFIX: Uninstalling node is complete."

