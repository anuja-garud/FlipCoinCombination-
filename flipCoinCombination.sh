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

declare -A coinDictionary
coinDictionary[HEAD]=0
coinDictionary[TAIL]=0

for (( i=0 ; i<10 ; i++ ))
do
        check=$((RANDOM%2))
        if [ $check -eq 0 ]
        then
                ((coinDictionary[HEAD]++))
        else
                ((coinDictionary[TAIL]++))
        fi
done
echo "Percentage of heads is $((${coinDictionary[HEAD]}*100/10))%"
echo "Percentage of tails is $((${coinDictionary[TAIL]}*100/10))%"
