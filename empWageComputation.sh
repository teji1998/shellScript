#!/bin/bash
echo "Welcome to employee wage computation "
if [[ $(($RANDOM%2)) -eq 1 ]]
then
         ratePerHr=20;
         empHrs=8;
         salary=$(($ratePerHr*$empHrs))
else
        salary=0;
fi
echo $salary


