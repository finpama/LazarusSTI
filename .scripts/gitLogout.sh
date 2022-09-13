#!/bin/bash

echo 'Git Unlogger by: @Finpama'

echo 'Removing email and username credentials...'
git config --global --unset user.name
git config --global --unset user.email
git config --global --unset credential.helper
echo 'Removed.'

echo 'Removing credentials from windows...'
cmdExec rmCredentials.bat
echo 'Removed.'

echo 'Press any key to exit.'
read end