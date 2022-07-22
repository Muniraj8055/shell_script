_________________if else condition___________________________________
syntax
if [condtion]
then
  statement
fi

________________Integer comparision__________________________________

-eq - is equal to - if [ "$a" -eq "$b" ]
-ne - not equal to - if [ "$a" -ne "$b" ]
-gt - is greater than - if [ "$a" -gt "$b" ]
-ge - is greater than or equal - if [ "$a" -ge "$b" ]
-lt - is less than  - if [ "$a" -lt "$b" ]
-le - is less than or equal to - if [ "$a" -le "$b" ]
<  - is less than - (( "$a" < "$b"))
<  - is less than - (( "$a" < "$b"))
<  - is less than - (( "$a" < "$b"))



count=10
if [ $count -gt 9 ]
then 
echo "condition is true"
else 
 echo "condition is not true"
fi
