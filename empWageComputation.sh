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
declare -A dailyWage
function  getWorkingHours(){
case $1 in
        $fullTime) empHrs=8;;
        $partTime) empHrs=4;;
                   *) empHrs=0;;
esac
echo $empHrs
}
echo -e "Day No.\t\tDailyWage\tTotalWage" 

while [[ $totalEmpHrs -lt $maxHrs && $totalWorkingDays -lt $workingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$(($RANDOM%3))
        WorkingHrs=$(getWorkingHours  $empCheck )
        totalEmpHrs=$(($totalEmpHrs+$WorkingHrs))
	dailyWage["$totalWorkingDays"]=$(($WorkingHrs*$ratePerHr))
	totalSalary=$(($totalSalary+${dailyWage["$totalWorkingDays"]}))
	echo -e $totalWorkingDays "\t\t"${dailyWage["$totalWorkingDays"]}"\t\t"$totalSalary
done
