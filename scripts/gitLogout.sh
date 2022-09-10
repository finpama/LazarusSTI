#!/bin/bash

echo 'Git Unlogger by: @Finpama'

git config --global --unset user.name
git config --global --unset user.email
git config --global --unset credential.helper

echo 'run this on cmd:'
echo 'cmdkey /delete:git:https://github.com'
echo ''


echo 'Press any key to exit.'
read end