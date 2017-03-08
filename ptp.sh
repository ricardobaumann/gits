#!/bin/sh
current_branch=`git rev-parse --abbrev-ref HEAD`
git pull origin ${current_branch}
set -e
git pull origin master
mvn clean package install
git add -A . && git commit
git push origin ${current_branch}
hub pull-request -h "${current_branch}"