#!/bin/bash

NAME=$1
LASTNAME=$2
LOCATION=$3
SHOW=$4

if [ "$SHOW" = "true" ]; then
 echo "Hello, $NAME $LASTNAME. You are in $LOCATION."
else
 echo "Please select the show option."
fi
