#!/bin/bash
# Script 3: Disk and Permission Auditor 

# 1. Standard System Directories 
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through standard directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR"
        echo " -> Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "------------------------"


# 2. Array of possible VLC config locations (APT, Snap, Flatpak)
VLC_PATHS=(
    "$HOME/.config/vlc" 
    "$HOME/snap/vlc/current/.config/vlc" 
    "$HOME/.var/app/org.videolan.VLC/config/vlc"
)

FOUND_CONFIG=0

# Looping through possible VLC paths
for PATH_CHECK in "${VLC_PATHS[@]}"; do
    if [ -d "$PATH_CHECK" ]; then
        VLC_PERMS=$(ls -ld "$PATH_CHECK" | awk '{print $1, $3, $4}')
        echo "FOUND: $PATH_CHECK"
        echo " -> Permissions: $VLC_PERMS"
        FOUND_CONFIG=1
    fi
done

if [ $FOUND_CONFIG -eq 0 ]; then
    echo "No VLC configuration directories found."
fi