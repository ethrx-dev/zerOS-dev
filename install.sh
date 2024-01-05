#!/usr/bin/env bash

INSTALL_PATH=${INSTALL_PATH:-$PWD/data}

curl -L https://raw.githubusercontent.com/ethrx-dev/umbrel/master/scripts/install \
    | sed "s|    sudo \${UMBREL_INSTALL_PATH}/scripts/start||" \
    | bash -s -- \
        --bootstrapped \
        --no-install-deps \
        --no-install-start-script \
        --install-path $INSTALL_PATH