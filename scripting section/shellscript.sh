#!/bin/bash

firstname=$1
lastname=$2
show=$3

if["$show" = "true"]; then
    echo "Hello, $firsname $lastname"
else
    echo "if you want to see the name then. please mark the show button"
