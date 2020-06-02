
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
while [[ $totalEmpHrs -lt $maxHrs && $totalWorkingDays -lt $workingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$(($RANDOM%3))
        case $empCheck in
        	$fullTime) empHrs=8;;
        	$partTime) empHrs=4;;
                   	*) empHrs=0;;
esac
totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$ratePerHr))
echo $totalSalary
