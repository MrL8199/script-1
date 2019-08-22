#!/bin/bash
sudo pkill cpulimit
b=`/bin/ps -C googlev3 -o pid=`
r=$(($RANDOM % 80)) 
echo $b
echo $r
sudo kill $b
cpulimit --exe googlev3 --limit $r -b && ./googlev3
