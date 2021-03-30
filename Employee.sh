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
then
     empHrs=4;
else
    salary=0
    empHrs=0;
fi
salary=$(( $empHrs * $empRatePerHr ))
case $empCheck in
        $isFullTime)
               empHrs=8
                 ;;
        $isPartTime)
               empHrs=4
                 ;;
                  *)
                 ;;
esac
salary=$(( $empHrs * $empRatePerHr ))
