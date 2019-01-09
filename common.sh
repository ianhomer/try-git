#!/bin/bash

function makeChange {
  DATE=`date '+%Y-%m-%d %H:%M:%S'`
  echo "Change ${DATE}" >> ${file}
  git commit -am "Change ${DATE}"
  git push
}

function label {
  echo $1 > $2
  echo >> $2
}

function apply {
  echo
  echo $2
  echo "$1"
  echo
  if [[ ! -z "$2" ]] ; then
    echo "    $1" >> ${documentation}
  fi
  $1
}