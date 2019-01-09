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

function getTime {
  echo date '%H:%M:%S'
}

function makeChange {
  DATE=`date '+%Y-%m-%d %H:%M:%S'`
  heading=${2:-${HEADING}}
  stamp=${STAMP:-.}
  echo "${heading} : ${STAMP} ${DATE}" >> $1
  git commit -am "${heading} : ${DATE}"
  git push
}

function heading {
  documentation=${2:-${DOCUMENTATION}}
  echo $1 > ${documentation}
  echo >> ${documentation}
}

function apply {
  documentation=${1:-${DOCUMENTATION}}
  echo
  echo $2
  echo "$1"
  echo
  if [[ ! -z "${documentation}" ]] ; then
    echo "    $1" >> ${documentation}
  fi
  $1
}