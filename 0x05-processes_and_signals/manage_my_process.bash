#!/usr/bin/env bash
# A a manage_my_process Bash script that:
#	- Indefinitely writes I am alive! to the file /tmp/my_process
#	- In between every I am alive! message, the program should pause for 2 seconds

while $1
do
echo "I am alive!" >> /tmp/my_process
sleep 2
done
