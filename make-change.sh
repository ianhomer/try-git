#!/bin/bash

. ./common.sh

file=files/change.txt
branch=experiment/change
DOCUMENTATION=documentation/make-change.md
HEADING=`heading "Make Change"`

checkout ${branch}

makeChange ${file}
makeChange ${file}
makeChange ${file}

