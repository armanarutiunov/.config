#!/bin/bash
info=$(diskutil apfs list 2>/dev/null | head -20)
used=$(echo "$info" | awk '/Capacity In Use By Volumes:/{for(i=1;i<=NF;i++) if($i=="B"){printf "%d", $(i-1)/1000/1000/1000; exit}}')
total=$(echo "$info" | awk '/Size \(Capacity Ceiling\):/{for(i=1;i<=NF;i++) if($i=="B"){printf "%d", $(i-1)/1000/1000/1000; exit}}')
echo "󰋊 ${used}G/${total}G"
