# script name :  monitor_and_restart_nginx.sh
# author : Rameshwar Waghchaure
# purpose : this script will check nginx service, and if it is not running
it will restart nginx service and store logs in /var/log/nginx_monitor.log


#!/bin/bash
SERVICE="nginx"

if ! systemctl is-active --quiet $SERVICE; then

#!/bin/bash
SERVICE="nginx"

if ! systemctl is-active  --quit $SERVICE; then
    echo "restarting $ SERVICE...."
systemctl restart $SERVICE
echo "$SERVICE restarted at $(date)" >> /var/log/nginx_monitor.log
  