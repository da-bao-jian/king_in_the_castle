#!/bin/bash
# Author: Harry
# Date: 06/30、2021

ping -c1 192.168.1.1
	if [ $? -eq 0 ]
	then
	echo ok
	else
	echo not ok
	fi


