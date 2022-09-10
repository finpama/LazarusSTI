#!/bin/bash

echo 'Git logger by: @Finpama'

echo 'Github email: '
read email

echo 'Github username: '
read username

if [ $email ] & [ $username ]; then
    git config --global user.email "$email"
    git config --global user.name "$username"
else
    echo 'Write something...'
fi



echo 'Press any key to exit.'
read end