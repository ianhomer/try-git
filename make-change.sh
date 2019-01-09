#!/bin/bash

. ./common.sh

file=files/change.txt
branch=experiment/change
documentation=documentation/make-change.md

label "Make Change" ${documentation}

checkout ${branch}

makeChange ${file}
makeChange ${file}
makeChange ${file}

