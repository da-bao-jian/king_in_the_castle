#!/bin/bash
# Author: Harry
# Date: 14/07/2021
# Description: find idle processes and kill them

echo Process CMD needs to be killed: 
read cmd 
echo 

ps -ef | grep $cmd | grep -v grep | awk '{print $2}' | xargs -I{} kill{}

if [ $? -eq 0 ]
then
	echo process killed 
else
	echo process kill failed


