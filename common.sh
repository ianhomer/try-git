#!/bin/bash

function makeChange {
  DATE=`date '+%Y-%m-%d %H:%M:%S'`
  echo "Change ${DATE}" >> ${file}
  git commit -am "Change ${DATE}"
  git push
}