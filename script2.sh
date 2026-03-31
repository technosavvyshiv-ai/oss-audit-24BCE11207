#!/bin/bash
# Script 2: FOSS Package Inspector (Advanced Multi-Manager Check)

PACKAGE="vlc"

# We use 'command -v' as a universal way to check if the software is runnable
if command -v $PACKAGE &>/dev/null; then
    echo "SUCCESS: $PACKAGE is installed on this system."
    echo "--- Package Details ---"
    
    # Check if installed via standard APT (dpkg)
    if dpkg -l | grep -qw "^ii  $PACKAGE"; then
        echo "Installation Method: APT (Debian Package)"
        dpkg -s $PACKAGE | grep -E '^Version|^Maintainer'
        
    # Check if installed via Snap
    elif snap list | grep -qw "$PACKAGE"; then
        echo "Installation Method: Snap Package"
        snap info $PACKAGE | grep -E '^version|^publisher'
        
    else
        # Fallback if installed from source or AppImage
        echo "Installation Method: Custom/Source"
        $PACKAGE --version | head -n 1
    fi
else
    echo "WARNING: $PACKAGE is NOT installed on this system."
fi

echo "--------------------------------------"

# Philosophy note based on package name (Case statement requirement)
case $PACKAGE in
    apache2) echo "Apache: the web server that built the open internet." ;;
    mysql)   echo "MySQL: open source at the heart of millions of apps." ;;
    git)     echo "Git: the decentralized tool that safeguards code." ;;
    vlc)     echo "VLC: A triumph of student engineering, fighting for open multimedia standards." ;;
esac