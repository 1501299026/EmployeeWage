#! /bin/bash

echo "Welcome to Employee Wage Computation Program"

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
     echo "Employee is Present"
else
     echo "Employee is Absent"
fi
totalEmpHr=0
totalWorkingDays=0
function getWorkingHours(){

while [[ $totalEmpHr -le $max_Hrs_in_month  &&  $totalWorkingDays -le $num_Working_Days ]]
do
    empHrs=0
    (( totalWorkingDays++ ))
     empCheck=$((RANDOM%3))

      case $empCheck in
      case $1 in
        $isFullTime)
               empHrs=8
               workingHours=8
                 ;;
        $isPartTime)
               empHrs=4
               workingHours=4
                 ;;
                 *)
               empHrs=0
               workingHours=0
                 ;;
      esac
      totalEmpHr=$(( $totalEmpHr+$empHrs ))
      echo $workingHours
}
while [[ $totalWorkingHours -le $max_Hrs_in_month  &&  $totalWorkingDays -le $num_Working_Days ]]
do

    (( totalWorkingDays++ ))
     workingHours="$( getWorkingHours $((RANDOM%3)) )"


      totalWorkingHours=$(( $totalWorkingHours + $workingHours ))

done
totalSalary=$(( $totalEmpHr * $empRatePerHr ))
totalSalary=$(( $totalWorkingHours * $empRatePerHr ))
