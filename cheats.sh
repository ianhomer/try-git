#!/bin/bash

. ./common.sh

documentation=documentation/cheats.md

label "Cheats" ${documentation}

apply "git branch -a" ${documentation}