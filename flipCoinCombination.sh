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


#tripletCombination


declare -A coinDictionary
coinDictionary[HHH]=0
coinDictionary[HHT]=0
coinDictionary[HTH]=0
coinDictionary[THH]=0
coinDictionary[HTT]=0
coinDictionary[THT]=0
coinDictionary[TTH]=0
coinDictionary[TTT]=0

for (( i=0 ; i<20 ; i++ ))
do
        coinFlip=$((RANDOM%2))
        coinFlip2=$((RANDOM%2))
        coinFlip3=$((RANDOM%2))
        case $coinFlip$coinFlip2$coinFlip3 in
                000)
                        ((coinDictionary[HHH]++))
                        ;;
                001)
                        ((coinDictionary[HHT]++))
                        ;;
                010)
                        ((coinDictionary[HTH]++))
                        ;;
                100)
                        ((coinDictionary[THH]++))
                        ;;
                011)
                        ((coinDictionary[HTT]++))
                        ;;
                101)
                        ((coinDictionary[THT]++))
                        ;;
                110)
                        ((coinDictionary[TTH]++))
                        ;;
                111)
                        ((coinDictionary[TTT]++))
                        ;;
        esac
done
echo "Percentage of HHH is $((${coinDictionary[HHH]}*100/20))%"
echo "Percentage of HHT is $((${coinDictionary[HHT]}*100/20))%"
echo "Percentage of HTH is $((${coinDictionary[HTH]}*100/20))%"
echo "Percentage of THH is $((${coinDictionary[THH]}*100/20))%"
echo "Percentage of HTT is $((${coinDictionary[HTT]}*100/20))%"
echo "Percentage of THT is $((${coinDictionary[THT]}*100/20))%"
echo "Percentage of TTH is $((${coinDictionary[TTH]}*100/20))%"
echo "Percentage of TTT is $((${coinDictionary[TTT]}*100/20))%"


