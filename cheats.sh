#!/bin/bash

. ./common.sh

documentation=documentation/cheats.md

heading "Cheats" ${documentation}

apply "git branch -a" ${documentation}
apply "git log --graph --decorate --pretty=oneline --abbrev-commit" ${documentation}