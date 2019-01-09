#!/bin/bash

file=files/conflictable.txt
branch=experiment/conflicting

function makeChange {
  DATE=`date '+%Y-%m-%d %H:%M:%S'`
  echo "Change ${DATE}" >> ${file}
  git commit -am "Change ${DATE}"
  git push
}

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

