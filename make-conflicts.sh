#!/bin/bash

file=files/conflictable.txt
branch=feature/conflicting

if [[ `git branch -a | grep -c ${branch}` -eq 0 ]] ; then
  echo "Creating branch ${branch}"
  git checkout -b feature/conflicting
else
  echo "Switching to branch ${branch}"
  git checkout feature/conflicting
fi

DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo "Change ${DATE}" >> ${file}
git commit -am "Change ${DATE}"
git push