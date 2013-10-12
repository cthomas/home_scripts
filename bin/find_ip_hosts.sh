#!/usr/bin/env bash

SUBNET=$1

if [ -n "$SUBNET" ]
then
	nmap -T4 -sP $SUBNET && egrep "00:00:00:00:00:00" /proc/net/arp
else
	echo "Usage:"
	echo "$0 <subnet>"
fi
