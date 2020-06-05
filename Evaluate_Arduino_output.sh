#! /bin/bash

file=/home/user/inputfile
while :      # continue running while loop indefinitely
        do i=`tail -1 $file | cut -d" " -f3`  # cut the 2nd field of the last line of the file
        if [[ $i -gt 30 ]]  # triggers a heat alarm if the temperature > 30 C
                then echo "Heat alarm! temp is $i C"
                echo "temp is $i C" | mail -s "fire alarm!" myemail@gmail.com   
                echo "email has been sent"
                break         # stop the script if this condition is met
        else echo "Temperature is normal - $i C"
        sleep 1   # wait 1 second
        fi
done
               
