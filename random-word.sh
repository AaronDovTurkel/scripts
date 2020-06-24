#!/bin/bash

if [ "$1" != "" ]; then

GREPPED_WORDS=($(grep -E "^\w{1,$1}$" /usr/share/dict/words))

GREPPED_LENGTH=${#GREPPED_WORDS[@]}

GREPPED_RANDOM_INDEX=$(jot -r 1 0 $GREPPED_LENGTH)

GREPPED_RANDOM_WORD=${GREPPED_WORDS[$GREPPED_RANDOM_INDEX]}

echo $GREPPED_RANDOM_WORD

else

WORDS=($(cat /usr/share/dict/words))

LENGTH=${#WORDS[@]}

RANDOM_INDEX=$(jot -r 1  0 $LENGTH)

RANDOM_WORD=${WORDS[$RANDOM_INDEX]}

echo $RANDOM_WORD

fi

