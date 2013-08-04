#!/bin/bash

pids=`screen -r | awk -F "\t" '{print $2}' | awk -F "." '{print $1}'`
echo $pids

for pid in ${pids[@]}
do
       screen -r ${pid}
#	echo $pid
done
