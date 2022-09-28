#!/bin/bash

processColor = "\033[1;35m"
questionColor = "\033[0;34m"

echo -e $processColor 'Logging...'

echo -e $questionColor 'Github username: '
read username

echo -e $questionColor 'Github email: '
read email


if [ $email ] & [ $username ]; then
    git config --global user.email "$email"
    git config --global user.name "$username"
else
    echo -e $processColor 'Write something...'
fi
