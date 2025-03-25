# script_name: delete_log_file_older_than_30_days
# author: Rameshwar Waghchaure
# version: v2
# purpose: this script will delete ;logs which are older than 30 days

#/bin/bash
LOG_DIR="var/log"
echo "deleting log file from $LOG_DIR older than 30 days"
find $LOG_DIR -type f -name "*.log" -mtime +30 -exec rm -f {} \;