#!/bin/bash

if [ $# -ne 2 ];then
   echo "Usage:sh network.sh ethX time"
   exit 1
fi

ethx=$1
time=$2
i=0
begin_in=$(cat /proc/net/dev |grep eth0 |awk -F '[ :]+' '{print $3}')
begin_out=$(cat /proc/net/dev |grep eth0 |awk -F '[ :]+' '{print $3}')

while [ $i -le 10 ] 
do
  sleep $time
  end_in=$(cat /proc/net/dev |grep eth0 |awk -F '[ :]+' '{print $3}')
  end_out=$(cat /proc/net/dev |grep eth0 |awk -F '[ :]+' '{print $3}')

  ave_in=$((($end_in-$begin_in)/$time))
  ave_out=$((($end_out-$begin_out)/$time))
  echo "ave_in is:$ave_in    ave_out is :$ave_out"
  begin_in=$end_in
  begin_out=$end_out
  i=$(($i+1)) 

done
