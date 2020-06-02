#!/bin/bash
echo "Welcome to employee wage computation "
partTime=1;
fullTime=2;
ratePerHr=20;
maxHrs=100
workingDays=20;
totalSalary=0;
totalEmpHrs=0;
totalWorkingDays=0;

function  getWorkingHours(){
case $1 in
        $fullTime) empHrs=8;;
        $partTime) empHrs=4;;
                   *) empHrs=0;;
esac
echo $empHrs
}
while [[ $totalEmpHrs -lt $maxHrs && $totalWorkingDays -lt $workingDays ]]
do
        ((totalWorkingDays++))
        #empCheck=$(($RANDOM%3))
        WorkingHrs=$(getWorkingHours  $(($RANDOM%3)) )
        totalEmpHrs=$(($totalEmpHrs+$WorkingHrs))
done
totalSalary=$(($totalEmpHrs*$ratePerHr))
echo $totalSalary


       
