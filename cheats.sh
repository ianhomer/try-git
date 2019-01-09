#!/bin/bash

. ./common.sh

DOCUMENTATION=documentation/cheats.md

heading "Cheats"

apply "git branch -a"
apply "git log --decorate --pretty=oneline --abbrev-commit -n 20"
apply "git log --graph --decorate --pretty=oneline --abbrev-commit -n 20"