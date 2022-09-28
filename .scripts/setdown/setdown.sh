#!/bin/bash

processColor="\033[1;35m"
questionColor="\033[0;34m"

echo -e $processColor 'Updating remotes...'

git checkout main
git merge pcUni
git merge pcHome

git checkout pcHome
git merge main

git checkout pcUni
git merge main

git checkout main
git push

git checkout pcHome
git push 

git checkout pcUni
git push

echo -e $questionColor 'Logout? [y/n]'
read res

if [ $res == 'y' ]; then
    bash gitLogout.sh
fi


echo -e $processColor 'Press any key to exit.'
read end
