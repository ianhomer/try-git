#!/bin/bash

. ./common.sh

file=files/conflictable.txt
branch=experiment/conflicting
DOCUMENTATION=documentation/make-conflicts.md

heading "Make Conflicts"

checkout ${branch}
makeChange

git checkout master
makeChange

