#!/bin/bash -x

HEAD=0;
TAIL=1;

check=$((RANDOM%2));

if [ $check -eq 0 ]
then
     echo "HEAD";
else
    echo "TAIL";
fi

