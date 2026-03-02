#!/bin/bash
info=$(diskutil apfs list 2>/dev/null | head -20)
used=$(echo "$info" | awk '/Capacity In Use By Volumes:/{printf "%d", $7/1000/1000/1000; exit}')
total=$(echo "$info" | awk '/Size \(Capacity Ceiling\):/{printf "%d", $5/1000/1000/1000; exit}')
echo "󰋊 ${used}G/${total}G"
