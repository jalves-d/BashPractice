#!/bin/bash

read -p "Enter number: " NUM
echo

if [ $NUM -gt 100 ]
then
        echo "We have entered in IF block."
        sleep 3
        echo "Your number is greater than 100"
        echo
else
        echo "Your number is less than 100"
        echo
date
echo
fi


echo "Script execution completed."

