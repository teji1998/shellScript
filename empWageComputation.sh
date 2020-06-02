#!/bin/bash
echo "Welcome to employee wage computation "
partTime=1
fullTime=2
ratePerHr=20;
workingDays=20;
totalSalary=0;
for (( i=1; i<=$workingDays; i++ ))
do
        empCheck=$(($RANDOM%3))
        case $empCheck in
        	$fullTime) empHrs=8;;
        	$partTime) empHrs=4;;
                   	*) empHrs=0;;
esac
salary=$((empHrs*ratePerHr))
totalSalary=$(($salary+$totalSalary))
done
echo $totalSalary
