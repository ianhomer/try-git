#!/bin/bash

HEADING="Make Change"

. ./common.sh

file=files/change.txt
branch=experiment/change
DOCUMENTATION=documentation/make-change.md
heading ${HEADING}

checkout ${branch}

makeChange ${file}
makeChange ${file}
makeChange ${file}

