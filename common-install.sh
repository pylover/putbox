#! /usr/bin/env bash

set -e


BWD=$(pwd)
PREFIX=/usr/local
BIN="${PREFIX}/bin"
REPO=https://github.com/pylover/unison.git
TMP=$(mktemp -d)

sudo apt install -y ocaml-nox git curl

cd ${TMP}
git clone --depth 1 $REPO

cd unison
make 
sudo cp src/unison ${BIN}
sudo cp src/unison-fsmonitor ${BIN}

cd ${BWD}
rm -rf ${TMP}

