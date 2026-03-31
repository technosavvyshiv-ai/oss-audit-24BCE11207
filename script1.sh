#!/bin/bash
# Script 1: System Identity Report
# Author: Shiv Gaikwad | Course: Open Source Software

STUDENT_NAME="Shiv Gaikwad"
SOFTWARE_CHOICE="VLC Media Player"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date '+%A, %d %B %Y')

# Safely extract the Ubuntu/Linux distro name
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$PRETTY_NAME
else
    DISTRO=$(uname -s)
fi

echo "======================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "  Target Software   — $SOFTWARE_CHOICE"
echo "======================================"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date         : $DATE"
echo "--------------------------------------"
echo "License Note: This OS is powered by the Linux kernel (GPL v2)"