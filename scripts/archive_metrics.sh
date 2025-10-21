#!/bin/bash

mkdir -p /home/ec2-user/system_monitor_project/archive

date_stamp=$(date +%d%m%Y)

tar -czf "/home/ec2-user/system_monitor_project/archive/metrics_${date_stamp}.tar.gz" /home/ec2-user/system_monitor_project/reports/*.txt 2>/dev/null

rm -f /home/ec2-user/system_monitor_project/reports/*.txt

echo "Archived metrics to /home/ec2-user/system_monitor_project/archive/metrics_${date_stamp}.tar.gz)"

