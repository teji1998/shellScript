#!/bin/bash
echo "Welcome to employee wage computation "
PartTime=1
FullTime=2
ratePerHr=20;
if [[ $(($RANDOM%3)) -eq 1 ]]
then
        empHrs=4;
elif [[ $(($RANDOM%3)) -eq 2 ]]
then
        empHrs=8;
else
        empHrs=0;
fi
salary=$(($ratePerHr*$empHrs))
echo $salary
