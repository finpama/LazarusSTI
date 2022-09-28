#!/bin/bash

questionColor="\033[1;35m"
processColor="\033[0;34m"
defaultColor="\033[0;0m"



echo -e $processColor'Logging...' $defaultColor

echo -e $questionColor'Github username: ' $defaultColor
read username

echo -e $questionColor'Github email: ' $defaultColor
read email

if [ $email ] & [ $username ]; then
    git config --global user.email "$email"
    git config --global user.name "$username"
else
    echo -e $processColor'Write something...' $defaultColor
fi



echo -e $questionColor'Press any key to exit.' $defaultColor
read end
