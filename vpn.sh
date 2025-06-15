#!/bin/bsh

RED="$(printf '\033[31m')"  WHITE="$(printf '\033[37m')"
ORG="$(printf '\e[1;93m Werbot Ver : 1.0')" MAGENTA="$(printf '\033[35m')" 
REF="$(printf ' \e[1;37m\n')" BLACK="$(printf '\033[30m')"

USER="vpnbook"
PASS="cf32e5w"
AUTH_FILE="vpn.auth"

echo -e "$USER\n$PASS" > $AUTH_FILE
chmod 600 $AUTH_FILE 

       echo -e "${BLACK}[${WHITE}::${BLACK}]${WHITE} Starting the VPN...${WHITE}";
       sleep 0.75;
        openvpn --config openvpn/vpnbook-fr200-tcp80.ovpn --auth-user-pass $AUTH_FILE
