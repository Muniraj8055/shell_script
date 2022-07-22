___________________Arrays________________________________

os=('windows' 'linux' 'fedora' 'chromeos')

os[0]='mac' #it will update the array 

echo "${os[0]}" , "${os[1]}" , "${os[2]}"

unset os[1] #it will remove the element in an array

echo "${!os[@]}" #it will print the indeces of array

echo "${#os[@]}" #it will print the length of an array

echo "${os[@]}" #it will print the all the elements of an array

