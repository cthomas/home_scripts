#!/usr/bin/env bash

# Example nmap cmd: sudo nmap -sP 172.16.0.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'

sudo nmap -sP 172.16.0.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'
