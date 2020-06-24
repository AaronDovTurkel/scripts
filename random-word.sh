#!/bin/bash

WORDS=($(cat /usr/share/dict/words))

LENGTH=${#WORDS[@]}

RANDOM_INDEX=$(jot -r 1  0 $LENGTH)

echo ${WORDS[$RANDOM_INDEX]}

