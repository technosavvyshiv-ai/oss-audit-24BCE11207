#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "--- My Open Source Manifesto ---" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "As an engineering student, I rely on open foundations like $TOOL. 
To me, the core of the open-source philosophy is $FREEDOM. It ensures that 
knowledge is a shared human resource, not locked behind corporate paywalls. 
Just as the creators of VLC built a media player for their campus and shared 
it with the world, if I had unlimited time, I would build $BUILD and release 
it under the GPL. We innovate faster when we stand on the shoulders of giants." >> "$OUTPUT"


echo "Manifesto saved to $OUTPUT"
echo "Here is what you wrote:"
echo ""
cat "$OUTPUT"