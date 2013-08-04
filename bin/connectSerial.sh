#!/usr/bin/env bash

DEV=$1

if [ ! -c $DEV ]
then
	echo "Must input a serial device to connect to!"
	echo "ie $0 /dev/ttyUSB0"
	exit 1
fi

sudo screen -t $DEV-TERM $DEV 115200,cs8,echo,icrnl,echonl
