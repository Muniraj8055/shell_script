________________________case statement______________________________

syntax

case expression in
   pattern1 )
       statements ;;
   pattern2 )
      statements ;;
   ...
esac

name="HowLinux"
 
case $name in
       "Linux")
               echo "Not quite right"
               ;;
       "HowLinux")
               echo "That's right!"
               ;;
esac

vehicle=$1

case $vehicle in
       "honda")
          echo "You entered honda"
          ;;
       "huwai")
          echo "You entered huwai"
          ;;
        *)
          echo "you entered other than honda and huwai"  

esac
