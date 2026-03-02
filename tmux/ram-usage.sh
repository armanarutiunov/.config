#!/bin/bash
pages_free=$(vm_stat | awk '/Pages free/{gsub(/\./,"",$3); print $3}')
pages_inactive=$(vm_stat | awk '/Pages inactive/{gsub(/\./,"",$3); print $3}')
pages_speculative=$(vm_stat | awk '/Pages speculative/{gsub(/\./,"",$3); print $3}')
total_bytes=$(sysctl -n hw.memsize)
total_kb=$((total_bytes / 1024))
free_kb=$(( (pages_free + pages_inactive + pages_speculative) * 4096 / 1024 ))
used_kb=$((total_kb - free_kb))
used_gb=$(awk "BEGIN{printf \"%.1f\", $used_kb / 1024 / 1024}")
total_gb=$((total_bytes / 1024 / 1024 / 1024))
printf ' %sG/%sG' "$used_gb" "$total_gb"
