#!/bin/bash

if grep 'MOPAC Job: "mopac.in" ended normally' run.log > /dev/null 2> /dev/null; then
	printf "%-40s[    OK    ]\n" "Test 1 - interface functionality"
	exit 0
else
	printf "%-40s[  Failed  ]\n" "Test 1 - interface functionality"
	exit 1
fi
