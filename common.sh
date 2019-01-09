#!/bin/bash

function checkout {
  if [[ `git branch -a | grep -c $1` -eq 0 ]] ; then
    echo "Creating branch $1"
    git checkout -b $1
    git push --set-upstream origin $1
  else
    echo "Switching to branch $1"
    git checkout $1
  fi
}

function makeChange {
  DATE=`date '+%Y-%m-%d %H:%M:%S'`
  echo "${HEADING} : Change ${DATE}" >> $1
  git commit -am "${HEADING} : Change ${DATE}"
  git push
}

function heading {
  documentation=${1:-DOCUMENTATION}
  echo $1 > ${documentation}
  echo >> ${documentation}
  return $1
}

function apply {
  documentation=${1:-DOCUMENTATION}
  echo
  echo $2
  echo "$1"
  echo
  if [[ ! -z "${documentation}" ]] ; then
    echo "    $1" >> ${documentation}
  fi
  $1
}