#!/bin/sh
current_branch=`git rev-parse --abbrev-ref HEAD`
git pull origin ${current_branch}
git pull origin master && mvn clean package install && git push origin ${current_branch}