#!/bin/bash

HEADING="Make Change"

. ./common.sh

file=files/change.txt
masterFile=files/master-change.txt
branch=experiment/change
DOCUMENTATION=documentation/make-change.md
heading "${HEADING}"

checkout ${branch}

# Branch changes
makeChange ${file}
makeChange ${file}
makeChange ${file}

# Non-conflicting change
git checkout master
makeChange ${masterFile}

