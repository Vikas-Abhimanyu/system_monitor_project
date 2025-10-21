#!/bin/bash

mkdir -p /home/ec2-user/system_monitor_project/reports

timestamp="$(date +%d%m%Y_%H%M%S)"

output_file="/home/ec2-user/system_monitor_project/reports/metrics_${timestamp}.txt"

{
	echo "Timestamp: $timestamp"
	echo "CPU usage: $(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')%"
	echo "Memory usage: $(free -m | awk '/Mem:/ {printf "%.2f", $3/$2 * 100}')%"
	echo "Disk usage: $(df -h / | awk 'NR==2 {print$5}')"
	echo "System uptime: $(uptime -p)"
	echo "Load Average: $(uptime | awk -F'load average:' '{print $2}' | xargs)"
} > "$output_file"

echo "Metrics saved to $output_file"
