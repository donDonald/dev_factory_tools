#!/bin/bash

C_LOG_PREFIX="$C_LOG_PREFIX.basics"
echo "$C_LOG_PREFIX: Installing basic tools..."

apt update \
  && apt install -y \
    git \
    tig \
    vim \
    mc \
    curl \
    wget \
    gawk \
    zip \
    jq

# js is meant for ./auth-server/src/lib/sys/docker-hosts-update.sh

echo "$C_LOG_PREFIX: Installing basic tools is complete."


