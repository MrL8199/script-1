#!/bin/sh

# PATH TO YOUR HOSTS FILE
ETC_HOSTS=/etc/hosts

# DEFAULT IP FOR HOSTNAME
IP=$(ping -c 1 gicungduoc.ddns.net | awk -F'[()]' '/PING/{print $2}')

# Hostname to add/remove.
HOSTNAME="google.com"
if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
    then
        echo "$HOSTNAME Found in your $ETC_HOSTS, Removing now...";
        cp /etc/hosts ~/hosts.new
        sudo sed -i".bak" "/$HOSTNAME/d" /etc/hosts.new
        cat ~/hosts.new > /etc/hosts
    else
        echo "$HOSTNAME was not found in your $ETC_HOSTS";
    fi
HOSTS_LINE="$IP\t$HOSTNAME"
    if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
        then
            echo "$HOSTNAME already exists : $(grep $HOSTNAME $ETC_HOSTS)"
        else
            echo "Adding $HOSTNAME to your $ETC_HOSTS";
            sudo -- sh -c -e "echo '$HOSTS_LINE' >> /etc/hosts";

            if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
                then
                    echo "$HOSTNAME was added succesfully \n $(grep $HOSTNAME /etc/hosts)";
                else
                    echo "Failed to Add $HOSTNAME, Try again!";
            fi
    fi

