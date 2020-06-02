#!/bin/bash
echo "Welcome to employee wage computation "
PartTime=1
FullTime=2
ratePerHr=20;
empCheck=$(($RANDOM%3))

case $empCheck in
        $FullTime) empHrs=8;;
        $PartTime) empHrs=4;;
                *) empHrs=0;;
esac
salary=$(($ratePerHr*$empHrs))
echo $salary
