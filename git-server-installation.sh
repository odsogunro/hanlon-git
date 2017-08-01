#!/usr/bin/env bash

# git server installation
# ssh kazeem@155.246.104.76

#1. 
#$ git clone --bare my_project my_project.git
#git clone --bare https://github.com/odsogunro/hanlon-git hanlon-git-test
git clone --bare https://github.com/odsogunro/hanlon-git.git hanlon-git.git

#2. 
#$ scp -r my_project.git user@git.example.com:/srv/git
scp -r hanlon-git.git hfsladmin@155.246.104.25:/home/git

