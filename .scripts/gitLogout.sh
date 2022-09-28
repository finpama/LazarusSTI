#!/bin/bash

questionColor="\033[1;35m"
processColor="\033[0;34m"
defaultColor="\033[0;0m"

echo -e $processColor'Unlogging...' $defaultColor

echo -e $processColor'Removing email and username credentials...' $defaultColor
git config --global --unset user.name
git config --global --unset user.email
git config --global --unset credential.helper
echo -e $processColor'Removed.' $defaultColor

echo -e $processColor'Removing credentials from windows...' $defaultColor
cd assets
cmdExec rmWinCredentials.bat
echo -e $processColor'Removed.' $defaultColor

echo -e $questionColor'Press any key to exit.' $defaultColor
read end