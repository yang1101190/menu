#!/bin/bash


CurRoute=$(pwd)

echo "Check Disk Free"
Disk_Use=$(df -h |grep "/$" |awk '{print $5}' |awk -F "%" '{print $1}')

if [ $Disk_Use -lt 50 ];then
   echo "litter than 50%"
else
   echo "Disk_use is ${Disk_Use}%"
fi

Mem_Use=$(free -m |grep "Mem" |awk '{print $3}')
Total=$(free -m |grep "Mem" |awk '{print $2}')
Mem_B=$((($Mem_Use*100/$Total)))
echo  "Mem_B is ${Mem_B}%"

echo "Check Network IO"
cd $pwd
$CurRoute/network.sh eth0 1
