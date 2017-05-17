#!/bin/bash

sleep $(($RANDOM % 60))

env|sort

echo RESULT
if [ $(($RANDOM % 3)) -eq 1 ]; then
	echo DONE
else
	echo FAIL
fi
