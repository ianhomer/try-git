#!/bin/bash

. ./common.sh

file=files/change.txt
branch=experiment/change
DOCUMENTATION=documentation/make-change.md
HEADING="Make Change"
heading ${HEADING}

checkout ${branch}

makeChange ${file}
makeChange ${file}
makeChange ${file}

