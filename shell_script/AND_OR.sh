______________________AND operator______________________________________

age=25

if [ $age -gt 18 ] && [ $age -lt 30 ]
then
echo "valid age"
else
echo "not a valid age"
fi


if [ $age -gt 18 -a $age -lt 30 ] # u can also use -a for AND
then
echo "valid age"
else
 echo "not a valid age"
fi


______________________OR operator______________________________________

age=30

if [ $age -gt 18 ] || [ $age -eq 30 ] # or u can use #if [ $age -gt 18 -o $age -lt 30 ] 
then
echo "valid age"
else
echo "not a valid age"
fi
