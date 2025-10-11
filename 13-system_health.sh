#!/bin/bash
# Simple System Health Check Script

echo "===== System Health Report ====="
echo "Date & Time: $(date)"
echo "Hostname: $(hostname)"
echo "--------------------------------"
echo "Disk Usage:"
df -h | grep '^/dev/'
echo "--------------------------------"
echo "Memory Usage:"
free -h
echo "--------------------------------"
echo "Top 5 CPU consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo "--------------------------------"
echo "Top 5 Memory consuming processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
