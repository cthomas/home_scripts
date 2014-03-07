#!/usr/bin/env bash

usage()
{
	echo "$0 <remote_share> <local_mountpoint>"
	echo "Example:"
	echo "$0 user@10.10.10.100:/home/user /home/me/share"
}

REMOTE_SHARE=$1
LOCAL_MOUNTPOINT=$2

if [ -z "$REMOTE_SHARE" ]
then
	usage
	exit 1
fi

if [ ! -d $LOCAL_MOUNTPOINT ]
then
	usage
	exit 2
fi

sshfs -o idmap=user $REMOTE_SHARE $LOCAL_MOUNTPOINT
