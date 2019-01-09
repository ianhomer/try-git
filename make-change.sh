#!/bin/bash

HEADING="Make Change"
. ./common.sh

STAMP=`getTime`

file=files/change.txt
branch=experiment/change
DOCUMENTATION=documentation/make-change.md
heading "${HEADING}"

checkout ${branch}

makeChange ${file}
makeChange ${file}
makeChange ${file}

