#! /usr/bin/env bash

SPACE=$1

if [ -z ${SPACE} ]; then
	read -p "Space name: " SPACE
fi

mkdir ${HOME}/${SPACE}

