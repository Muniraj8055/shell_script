
# $-cat /etc/shells - to check the shells available
# $-chmod +x hello.sh - to provide the permission of execution
#./hello.sh - to execute the script file





#! /bin/bash

#this is comment.................
#echo 'hello world!!' # to print the statement

#___________________variables____________________________

#two types of varialbles 2 types 
#1.System variables - Created and maintained by OS
#2.User defined 


#echo $BASH
#echo $BASH_VERSION
#echo $HOME
#echo $PWD

#name=Muni
#echo  the name is $name

#________________Read input from user___________________

#echo 'enter the name'
#read name # input is saved in this variable
#echo 'entered name is : '$name

#echo 'enter the names'
#read name1 name2 name3 # to give multiple input
#echo 'entered names are : '$name1 , $name2 , $name3

#read -p 'username : ' user_var #u cantake input in same line
#read -sp 'password : ' pass_var #what u r typying will be hide
#echo 'username : '$user_var
#echo 'passwrd : '$pass_var

#echo 'Enter the names : '
#read -a names
#echo "Names : "${names[0]}, ${names[1]}, ${names[2]}

#echo "enter name"
#read  #if u not given any variable it will store in default variable called REPLY
#echo 'Name :'$REPLY


#_________________if else condition___________________________________
# syntax
#if [condtion]
#then
#   statement
#fi

#________________Integer comparision__________________________________

#-eq - is equal to - if [ "$a" -eq "$b" ]
#-ne - not equal to - if [ "$a" -ne "$b" ]
#-gt - is greater than - if [ "$a" -gt "$b" ]
#-ge - is greater than or equal - if [ "$a" -ge "$b" ]
#-lt - is less than  - if [ "$a" -lt "$b" ]
#-le - is less than or equal to - if [ "$a" -le "$b" ]
# <  - is less than - (( "$a" < "$b"))
# <  - is less than - (( "$a" < "$b"))
# <  - is less than - (( "$a" < "$b"))



#count=10
#if [ $count -gt 9 ]
#then 
# echo "condition is true"
#else 
#  echo "condition is not true"
#fi


#______________File test operators________________

#-b file	Checks if file is a block special file; if yes, then the condition becomes true.	[ -b $file ] is false.
#-c file	Checks if file is a character special file; if yes, then the condition becomes true.	[ -c $file ] is false.
#-d file	Checks if file is a directory; if yes, then the condition becomes true.	[ -d $file ] is not true.
#-f file	Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true.	[ -f $file ] is true.
#-g file	Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true.	[ -g $file ] is false.
#-k file	Checks if file has its sticky bit set; if yes, then the condition becomes true.	[ -k $file ] is false.
#-p file	Checks if file is a named pipe; if yes, then the condition becomes true.	[ -p $file ] is false.
#-t file	Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true.	[ -t $file ] is false.
#-u file	Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true.	[ -u $file ] is false.
#-r file	Checks if file is readable; if yes, then the condition becomes true.	[ -r $file ] is true.
#-w file	Checks if file is writable; if yes, then the condition becomes true.	[ -w $file ] is true.
#-x file	Checks if file is executable; if yes, then the condition becomes true.	[ -x $file ] is true.
#-s file	Checks if file has size greater than 0; if yes, then condition becomes true.	[ -s $file ] is true.
#-e file	Checks if file exists; is true even if file is a directory but exists.	[ -e $file ] is true.


#echo -e 'enter the name of the file : \c'
#read file_name

#if [ -e $file_name ]
#then 
#   echo "$file_name found"
#  else
#   echo "$file_name file not found"
#fi

#echo -e 'enter the name of the file : \c'
#read file_name

#if [ -f $file_name ]
#then 
#   echo "$file_name found"
#  else
#   echo "$file_name file not found"
#fi

#________________how to append text to already existing file______________

#echo -e 'enter the name of the file : \c'
#read file_name

#if [ -f $file_name ]
#then 
#  if [ -w $file_name ] # it will check the file has write permision or not
#	   then 
#	    echo "type some data. To quit press ctrl+d."
#	    cat >> $file_name  # if u use > it will override, >> it will append
#	   else
#	    echo "the file do not have write permission"
#	   fi
 # else
#   echo "$file_name file not found"
#fi






#______________________AND operator______________________________________

#age=25

#if [ $age -gt 18 ] && [ $age -lt 30 ]
#then
# echo "valid age"
#else
# echo "not a valid age"
#fi


#if [ $age -gt 18 -a $age -lt 30 ] # u can also use -a for AND
#then
# echo "valid age"
#else
 #echo "not a valid age"
#fi


#______________________OR operator______________________________________

#age=30

#if [ $age -gt 18 ] || [ $age -eq 30 ] # or u can use #if [ $age -gt 18 -o $age -lt 30 ] 
#then
# echo "valid age"
#else
# echo "not a valid age"
#fi


#_________________Arithmetic operations__________________


#num1=9
#num2=5

#echo $(( num1 + num2))
#echo $(( num1 - num2))
#echo $(( num1 * num2))
#echo $(( num1 / num2))
#echo $(( num1 % num2))

#Another way to perform arithmetic operation

#echo $( expr $num1 + $num2 )
#echo $( expr $num1 - $num2 )
#echo $( expr $num1 \* $num2 )
#echo $( expr $num1  / $num2 )
#echo $( expr $num1 % $num2 )

#+++++++++++++for decimal values+++++++++++++

#‘bc’ command produces integer value like other options when any division expression is executed. ‘bc -l’ command generates the exact output of the division and you can limit the fractional part by using scale value. Here, scale=2 is used. So the output shows 2 digits after the decimal point.

# Dividing 55 by 3 with bc only
#echo "55/3" | bc

# Dividing 55 by 3 with bc and -l option
#echo "55/3" | bc -l

# Dividing 55 by 3 with bc and scale value
#echo "scale=2; 55/3" | bc

#a=3.3
#b=4

#echo "$a+$b" | bc


#________________________case statement______________________________

#syntax

#case expression in
#    pattern1 )
#        statements ;;
#    pattern2 )
#       statements ;;
#    ...
#esac

#name="HowLinux"
 
#case $name in
#        "Linux")
#                echo "Not quite right"
#                ;;
#        "HowLinux")
#                echo "That's right!"
#                ;;
#esac

# vehicle=$1

# case $vehicle in
#        "honda")
#           echo "You entered honda"
#           ;;
#        "huwai")
#           echo "You entered huwai"
#           ;;
#         *)
#           echo "you entered other than honda and huwai"  

# esac

#___________________Arrays________________________________

# os=('windows' 'linux' 'fedora' 'chromeos')

# os[0]='mac' #it will update the array 

# echo "${os[0]}" , "${os[1]}" , "${os[2]}"

# unset os[1] #it will remove the element in an array

# echo "${!os[@]}" #it will print the indeces of array

# echo "${#os[@]}" #it will print the length of an array

# echo "${os[@]}" #it will print the all the elements of an array



#_______________While loops_____________________________

#syntax

# while [ condtion ]
# do 
#    command1
#    command2
#    command3
#    .......
# done

# n=1

# while [ $n -le 10 ]
# do
#   echo "$n"
#   n=$(( n+1 )) #it will print nos from 1 to 10
# done


#___________using sleep and open terminal with WHILE LOOP______________

#n=1

# while [ $n -le 10 ]
# do
#   echo "$n"
#   n=$(( n+1 ))
#   sleep 1  #it will print nos from 1 to 10 at regular intervals of 1 sec
# done

#___________________________________________________________________________


# while [ $n -le 3 ]
# do
#   echo "$n"
#   n=$(( n+1 ))
#    gnome-terminal & #it will open 3 terminal

# done

#_______________________Read a file contentin bash_______________________

# while read p
# do
#   echo $p
# done < hello.sh #input to variable p


# cat /home/muni/Documents/test | while read p
# do
#   echo $p
# done 




#____________________________UNTILL loop___________________________________

#syntax

# until [CONDITION]
# do
#   [COMMANDS]
# done

# n=1

# until [ $n -gt 10 ]
# do 
#    echo $n
#    n=$(( n+1 ))
# done

#________________________FOR loop___________________________________

# for VARIABLE in 1,2,3.....n
# do 
#   cammand1
#   command2
#   .....
#   commandN
# done
# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# for VARIABLE in file1 file2 file3
# do
#   cammand1 on $VARIABLE
#   command2
#   .....
#   commandN  
# done
# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# for OUTPUT in $(Linux-or-unix-command-here)
# do
#   cammand1 on $OUTPUT
#   command2 ON $OUTPUT
#   .....
#   commandN
# done
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++

# for ((EXP1; EXP2; EXP3 ))
# do
#   cammand1
#   command2
#   .....
#   commandN
# done

#_________________________________________________________________
# for i in 1 2 3 4 5 
# do
#    echo $i
# done
#_________________________________________________________________

#_________________________________________________________________
# for i in {1..10} u can provide range like this, it works on bash version above 3
# do
#    echo $i
# done
#_________________________________________________________________


#_________________________________________________________________
# for i in {1..10..2} #{START..END..INCREMENT}  it works on bash version above 4
# do
#    echo $i
# done
#_________________________________________________________________


#_________________________________________________________________
# for (( i=0; i<5; i++))
# do
#    echo $i
# done
#_________________________________________________________________


#_________________________________________________________________
# for command in ls pwd date
# do
#    echo "++++++++++++"$command"+++++++++++++++"
#    $command
# done
#_________________________________________________________________

#_________________________________________________________________
# for item in *
# do 
#   if [ -d $item ] 
#   then 
#     echo $item
#    fi
# done
#_________________________________________________________________


#______________________SELECT LOOP___________________________________________

#syntax 

#The select loop provides an easy way to create a numbered menu from which users can select options

# select varName in list
# do
#   command1
#   command2
#   .......
#   commandN
# done

# select car in honda benz bmw toyota
# do
#   echo "$car selected"
# done

# select department in CS IT ECE EE
# do
#   case $department in

#      CS)
#         echo "I am from CS department."
#         ;;

#  IT)
#         echo "I am from IT department."
#      ;;

#       ECE)
#         echo "I am from ECE department."
#      ;;

#  EE)
#         echo "I am from EE department."
#      ;;

#      none)
#         break
#      ;;

#      *) echo "Invalid selection"
#      ;;
#   esac
# done

#________________________BREAK AND CONTINUE________________________________

# for (( i=1; i<=10; i++))
# do 
#  if [ $i -gt 5 ]
#  then
#   break
#  fi
#  echo $i
# done

# for (( i=1; i<=10; i++))
# do 
#  if [ $i -eq 5 ]
#  then
#   continue
#  fi
#  echo $i
# done

#_________________________FUNCTIONS__________________________________-

#syntax

# function name(){
#     commands
# }

# name(){
#     commands
# }

# function print(){  
#     echo 'Welcome'  
# }  
  
# print 

# #Script to pass and access arguments  
  
# function_arguments()  
#     {  
#     echo $1  
#     echo $2  
#     echo $3  
#     echo $4  
#     echo $5  
#     }  
  
# #Calling function_arguments  
# function_arguments "We""welcome""you""on""Javatpoint."  


#_________________________LOCAL VARIABLE__________________________________

# name='shreyas'

# print(){
#     local name=$1
#     echo "the name is: $name"
# }
# echo "the name is: $name"

# print muni

# echo "the name is: $name"




#_____________________READ ONLY COMMANDS_______________________________

# we cannot reassign or overidde variable

# var=20
# readonly var
# var=30
# echo "var => $var"

#____________________________SIGNALS AND TRAPS_______________________



























































































