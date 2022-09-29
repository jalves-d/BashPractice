#!/bin/bash

for VAR in java .net python c c++
do
        sleep 1
        echo
        echo "Value of VAR is $VAR."
        echo
        date
done

MYUSERS="joao eduardo carlos"

for usr in $MYUSERS
do
        echo "Adding user $usr."
        useradd $usr
        id $usr
        echo
done


