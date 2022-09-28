#!/bin/bash

processColor="\033[1;35m"
questionColor="\033[0;34m"

echo -e $processColor 'Setting up branches...'

git checkout main
git pull

git checkout pcHome
git pull

git checkout pcUni
git pull

echo -e $questionColor 'Login? [y/n]'
read res

if [ $res == 'y' ]; then
    bash gitLogger.sh
fi


echo -e $processColor 'Press any key to exit.'
read end
