#!/bin/bash

. ./common.sh

file=files/conflictable.txt
branch=experiment/conflicting

if [[ `git branch -a | grep -c ${branch}` -eq 0 ]] ; then
  echo "Creating branch ${branch}"
  git checkout -b ${branch}
  git push --set-upstream origin ${branch}
else
  echo "Switching to branch ${branch}"
  git checkout ${branch}
fi

makeChange

git checkout master
makeChange

