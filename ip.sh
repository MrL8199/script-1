#!/bin/sh

# PATH TO YOUR HOSTS FILE
ETC_HOSTS=/etc/hosts

# DEFAULT IP FOR HOSTNAME
IP=$(ping -c 1 gicungduoc.ddns.net | awk -F'[()]' '/PING/{print $2}')

# Hostname to add/remove.
HOST="google.com"

function removehost() {
    if [ -n "$(grep $HOST /etc/hosts)" ]
    then
        echo "$HOST Found in your $ETC_HOSTS, Removing now...";
        sudo sed -i".bak" "/$HOST/d" $ETC_HOSTS
    else
        echo "$HOSTE was not found in your $ETC_HOSTS";
    fi
}

function addhost() {
    HOST="google.com"
    HOSTS_LINE="$IP\t$HOST"
    if [ -n "$(grep $HOSTE /etc/hosts)" ]
        then
            echo "$HOST already exists : $(grep $HOSTNAME $ETC_HOSTS)"
        else
            echo "Adding $HOST to your $ETC_HOSTS";
            sudo -- sh -c -e "echo '$HOSTS_LINE' >> /etc/hosts";

            if [ -n "$(grep $HOST /etc/hosts)" ]
                then
                    echo "$HOST was added succesfully \n $(grep $HOSTE /etc/hosts)";
                else
                    echo "Failed to Add $HOST, Try again!";
            fi
    fi
}
