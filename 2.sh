#!/bin/bash
if pgrep -x "cpulimit" > /dev/null then pkill cpulimit fi
if pgrep -x "googlev3" > /dev/null then pkill googlev3 fi
r=$(($RANDOM % 80)) 
echo $b
echo $r
./googlev3
b=`/bin/ps -C googlev3 -o pid=`
cpulimit --pid $b --limit $r
exit
