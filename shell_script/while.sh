
_______________While loops_____________________________

syntax

while [ condtion ]
do 
   command1
   command2
   command3
   .......
done

n=1

while [ $n -le 10 ]
do
  echo "$n"
  n=$(( n+1 )) #it will print nos from 1 to 10
done


___________using sleep and open terminal with WHILE LOOP______________

n=1

while [ $n -le 10 ]
do
  echo "$n"
  n=$(( n+1 ))
  sleep 1  #it will print nos from 1 to 10 at regular intervals of 1 sec
done

___________________________________________________________________________


while [ $n -le 3 ]
do
  echo "$n"
  n=$(( n+1 ))
   gnome-terminal & #it will open 3 terminal

done

_______________________Read a file contentin bash_______________________

while read p
do
  echo $p
done < hello.sh #input to variable p


cat /home/muni/Documents/test | while read p
do
  echo $p
done 


