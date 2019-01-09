#!/bin/bash

. ./common.sh

file=files/conflictable.txt
branch=experiment/conflicting
documentation=documentation/make-conflicts.md

heading "Make Conflicts" ${documentation}

checkout ${branch}
makeChange

git checkout master
makeChange

