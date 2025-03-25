# script_name: alert_when_disk_usage_exceed_80.sh
# author: Rameshwar Waghchaure
# version: v3
# purpose: this script will check disk usage for particular mount
point and if utilization exceed, trigger alert email


#!/bin/bash
THRESHOLD="80"
EMAIL="midrange@suncorp.com.au"
USAGE= df -h / | awk '{print $5}' | sed 's/%//g'

if [ "$USAGE" -gt  "$THRESHOLD" ]; then
echo "diks usage is at $USAGE% on $hostname" | mail -s "diks space alert "  $EMAIL

