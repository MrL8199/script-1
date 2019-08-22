#!/bin/bash
if pgrep -x "cpulimit" > /dev/null then pkill cpulimit
if pgrep -x "googlev3" > /dev/null then pkill googlev3
r=$(($RANDOM % 80)) 
echo $b
echo $r
sudo kill $b
cpulimit --exe googlev3 --limit $r -b && ./googlev3
exit
