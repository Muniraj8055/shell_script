________________how to append text to already existing file______________

echo -e 'enter the name of the file : \c'
read file_name

if [ -f $file_name ]
then 
 if [ -w $file_name ] # it will check the file has write permision or not
	   then 
	    echo "type some data. To quit press ctrl+d."
	    cat >> $file_name  # if u use > it will override, >> it will append
	   else
	    echo "the file do not have write permission"
	   fi
 else
  echo "$file_name file not found"
fi

