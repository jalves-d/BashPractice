#!/bin/bash
### This script prints system info ###
echo "Welcome to bash script."
echo
echo

#checking system uptime
echo "The uptime of the system is:"
uptime
echo

#Memory Utilization
echo "Memory Utilization"
free -m
echo

#Disk Utilization
echo "Disk Utilization"
df -h

