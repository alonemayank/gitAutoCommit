#!/bin/bash
NUMBER_N=$[ ($RANDOM%10) +1 ]
echo "Random Number $NUMBER_N"$'\n'
I=0
while [ $I -le $NUMBER_N ]
do

	date > ~/nodeProject/date.txt

	git -C ~/nodeProject/ add .
	git -C ~/nodeProject/ commit -m "Updating log file"
	git -C ~/nodeProject/ push
	sleep $[ ( $RANDOM % 20 )  + 1 ]m
	I=`expr $I + 1`
done
