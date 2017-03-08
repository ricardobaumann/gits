#!/bin/sh
current_branch=`git rev-parse --abbrev-ref HEAD`
git checkout master
git pull origin master
git checkout ${current_branch}
git pull origin ${current_branch}
git merge master