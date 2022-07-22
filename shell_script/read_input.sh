
________________Read input from user___________________

echo 'enter the name'
read name # input is saved in this variable
echo 'entered name is : '$name

echo 'enter the names'
read name1 name2 name3 # to give multiple input
echo 'entered names are : '$name1 , $name2 , $name3

read -p 'username : ' user_var #u cantake input in same line
read -sp 'password : ' pass_var #what u r typying will be hide
echo 'username : '$user_var
echo 'passwrd : '$pass_var

echo 'Enter the names : '
read -a names
echo "Names : "${names[0]}, ${names[1]}, ${names[2]}

echo "enter name"
read  #if u not given any variable it will store in default variable called REPLY
echo 'Name :'$REPLY