_________________Arithmetic operations__________________


num1=9
num2=5

echo $(( num1 + num2))
echo $(( num1 - num2))
echo $(( num1 * num2))
echo $(( num1 / num2))
echo $(( num1 % num2))

Another way to perform arithmetic operation

echo $( expr $num1 + $num2 )
echo $( expr $num1 - $num2 )
echo $( expr $num1 \* $num2 )
echo $( expr $num1  / $num2 )
echo $( expr $num1 % $num2 )

+++++++++++++for decimal values+++++++++++++

‘bc’ command produces integer value like other options when any division expression is executed. ‘bc -l’ command generates the exact output of the division and you can limit the fractional part by using scale value. Here, scale=2 is used. So the output shows 2 digits after the decimal point.

Dividing 55 by 3 with bc only
echo "55/3" | bc

Dividing 55 by 3 with bc and -l option
echo "55/3" | bc -l

Dividing 55 by 3 with bc and scale value
echo "scale=2; 55/3" | bc

a=3.3
b=4

echo "$a+$b" | bc

