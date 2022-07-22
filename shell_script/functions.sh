
_________________________FUNCTIONS__________________________________-

syntax

function name(){
    commands
}

name(){
    commands
}

function print(){  
    echo 'Welcome'  
}  
  
print 

#Script to pass and access arguments  
  
function_arguments()  
    {  
    echo $1  
    echo $2  
    echo $3  
    echo $4  
    echo $5  
    }  
  
#Calling function_arguments  
function_arguments "We""welcome""you""on""Javatpoint."  


_________________________LOCAL VARIABLE__________________________________

name='shreyas'

print(){
    local name=$1
    echo "the name is: $name"
}
echo "the name is: $name"

print muni

echo "the name is: $name"
