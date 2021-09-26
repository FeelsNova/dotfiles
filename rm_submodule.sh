#!/bin/bash


#Please note: $submodulepath doesn't contain leading or trailing slashes.
submodulename=$1
submodulepath=$2

git config -f .git/config --remove-section submodule.$submodulename
git config -f .gitmodules --remove-section submodule.$submodulename


git rm --cached $submodulepath
git add -u 
git commit -m "removed submodule $submodulename"
rm -rf $submodulepath
rm -rf .git/modules/$submodulename


