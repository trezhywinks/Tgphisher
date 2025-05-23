#!/bin/bash
sudo cp -r tgphisher /bin/

RED="$(printf '\033[31m')"  WHITE="$(printf '\033[37m')"
ORG="$(printf '\e[1;93m Werbot Ver : 1.0')"
REF="$(printf ' \e[1;37m\n')"

printf " \e[1;37m\n"

START_SCRIPT_TELEGRAM(){
cat << EOF
${RED}
▄▄▄█████▓  ▄████  ██▓███   ██░ ██  ██▓  ██████  ██░ ██ ▓█████  ██▀███
▓  ██▒ ▓▒ ██▒ ▀█▒▓██░  ██▒▓██░ ██▒▓██▒▒██    ▒ ▓██░ ██▒▓█   ▀ ▓██ ▒ ██▒
▒ ▓██░ ▒░▒██░▄▄▄░▓██░ ██▓▒▒██▀▀██░▒██▒░ ▓██▄   ▒██▀▀██░▒███   ▓██ ░▄█ ▒
░ ▓██▓ ░ ░▓█  ██▓▒██▄█▓▒ ▒░▓█ ░██ ░██░  ▒   ██▒░▓█ ░██ ▒▓█  ▄ ▒██▀▀█▄
  ▒██▒ ░ ░▒▓███▀▒▒██▒ ░  ░░▓█▒░██▓░██░▒██████▒▒░▓█▒░██▓░▒████▒░██▓ ▒██▒
  ▒ ░░    ░▒   ▒ ▒▓▒░ ░  ░ ▒ ░░▒░▒░▓  ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░
    ░      ░   ░ ░▒ ░      ▒ ░▒░ ░ ▒ ░░ ░▒  ░ ░ ▒ ░▒░ ░ ░ ░  ░  ░▒ ░ ▒░
  ░      ░ ░   ░ ░░        ░  ░░ ░ ▒ ░░  ░  ░   ░  ░░ ░   ░     ░░   ░
               ░           ░  ░  ░ ░        ░   ░  ░  ░   ░  ░   ░
 
${WHITE}| Author       : Tgphisher              (shell-script) - (javascript)
${WHITE}| Creator      : trezhywinks                               
${WHITE}| Version      : 99.1.0                                    
${WHITE}| Description  : WineWinks likes red, why red? 
${WHITE}| Github       :${RED} https://github.com/trezhywinks${WHITE}
 
[::] Tgphisher (commands) 
 
tgphisher -s --pisher         : Start the phisher script to get the
                                victim's data.

tgphisher -d session.txt      : Delete the old session if you want
                                to start a new session.

tgphisher -s --telegram       : Start the script to connect with the
                                victim's telegram.
EOF
}

START_SCRIPT_TELEGRAM
