#!/bin/bash
echo "Welcome to employee wage computation "
if [[ $(($RANDOM%2)) -eq 1 ]]
then
        echo "EMPLOYEE IS ABSENT "
else
        echo "EMPLOYEE IS PRESENT"
fi
