
echo "Welcome to Employee Wage Computation Program"

isPresent=1
randomCheck=$((RANDOM%2))
isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

if [ $isPresent -eq $randomCheck ]
if [ $isFullTime -eq $randomCheck ]
then
     empRatePerHr=20
     empHrs=8;
     salary=$(( $empHrs * $empRatePerHr ))
elif [ $isPartTime -eq $randomCheck ]
else
     echo "Employee is Absent"
    salary=0
fi
