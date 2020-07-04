#!/usr/bin/env bash

if ! [ -d "pi-gen" ]; then
    git clone https://github.com/blomma/pi-gen.git
fi

cd ~/pi-gen || exit

git checkout own

