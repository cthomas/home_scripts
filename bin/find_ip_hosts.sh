#!/usr/bin/env bash

SUBNET=$1

if [ -n "$SUBNET" ]
then
	nmap -T4 -sP 192.168.2.0/24 && egrep "00:00:00:00:00:00" /proc/net/arp
else
	echo "Usage:"
	echo "$0 <subnet>"
fi
