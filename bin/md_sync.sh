#!/usr/bin/env sh

SOURCE_MD_LOCATION=/mnt/md_releases
DEST_MD_LOCATION=/home/cthomas/data/md_releases

for d in `ls $DEST_MD_LOCATION`
do
	if [ -d ${SOURCE_MD_LOCATION}/${d} ]
	then
		echo "Updating [${DEST_MD_LOCATION}/${d}] from [${SOURCE_MD_LOCATION}/${d}]"
		rsync -avz ${SOURCE_MD_LOCATION}/${d} ${DEST_MD_LOCATION}/
	fi
done
