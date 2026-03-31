#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log.sh /var/log/syslog "error"

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

while [ ! -f "$LOGFILE" ]; do
    echo "Error: File '$LOGFILE' not found or you lack read permissions."
    read -p "Please enter a valid log file path (e.g., /var/log/syslog): " LOGFILE
done

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi