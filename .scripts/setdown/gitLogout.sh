#!/bin/bash

processColor = "\033[1;35m"
questionColor = "\033[0;34m"

echo -e $processColor 'Unlogging...'

echo -e $processColor 'Removing email and username credentials...'
git config --global --unset user.name
git config --global --unset user.email
git config --global --unset credential.helper
echo -e $processColor 'Removed.'

echo -e $processColor 'Removing credentials from windows...'
cmdExec rmCredentials.bat
echo -e $processColor 'Removed.'

echo -e $processColor 'Press any key to exit.'
read end