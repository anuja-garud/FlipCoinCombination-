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



#DoubletCombination

declare -A coinDictionary
coinDictionary[HH]=0
coinDictionary[HT]=0
coinDictionary[TH]=0
coinDictionary[TT]=0

for (( i=0 ; i<10 ; i++ ))
do
        coinFlip=$((RANDOM%2))
        coinFlip2=$((RANDOM%2))
        case $coinFlip$coinFlip2 in
                00)
                        ((coinDictionary[HH]++))
                        ;;
                01)
                        ((coinDictionary[HT]++))
                        ;;
                10)
                        ((coinDictionary[TH]++))
                        ;;
                11)
                        ((coinDictionary[TT]++))
                        ;;
        esac
done
echo "Percentage of two consecutive heads is $((${coinDictionary[HH]}*100/10))%"
echo "Percentage of heads tails is $((${coinDictionary[HT]}*100/10))%"
echo "Percentage of tails heads is $((${coinDictionary[TH]}*100/10))%"
echo "Percentage of two consecutive tails is $((${coinDictionary[TT]}*100/10))%"

