______________________SELECT LOOP___________________________________________

syntax 

The select loop provides an easy way to create a numbered menu from which users can select options

select varName in list
do
  command1
  command2
  .......
  commandN
done

select car in honda benz bmw toyota
do
  echo "$car selected"
done

select department in CS IT ECE EE
do
  case $department in

     CS)
        echo "I am from CS department."
        ;;

 IT)
        echo "I am from IT department."
     ;;

      ECE)
        echo "I am from ECE department."
     ;;

 EE)
        echo "I am from EE department."
     ;;

     none)
        break
     ;;

     *) echo "Invalid selection"
     ;;
  esac
done