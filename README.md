# System Metrics Collection

This project automates system performance monitoring using simple shell scripts.

## Scripts

### `collect_metrics.sh`
Captures and saves:

- CPU usage  
- Memory usage  
- Disk usage  
- System uptime  
- Load average  

Each report is saved as:

### `archive_metrics.sh`
Compresses all daily metrics files into: /home/ec2-user/system_monitor_project/archive/metrics_<date>.tar.gz

## Cron Jobs
- Collect metrics every 15 minutes: */15 * * * * /home/ec2-user/system_monitor_project/scripts/collect_metrics.sh
- Archive metrics daily at midnight: 0 11 * * * /home/ec2-user/system_monitor_project/scripts/archive_metrics.sh

## Git Setup
- `.gitignore` excludes `archive/` and `reports/` directories.
- Only scripts and documentation are tracked in GitHub.
