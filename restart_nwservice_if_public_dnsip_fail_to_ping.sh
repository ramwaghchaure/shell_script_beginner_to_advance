# script_name: restart_nwservice_if_public_dnsip_fail_to_ping.sh
# author: Rameshwar Waghchaure
# version: v3
# purpose: THis script will check if public dns 8.8.8.8 is pingable or not, if not
it restart network service on server

#!/bin/bash
PING_TEST="8.8.8.8"

if ping -c 2 $PING_TEST &>/dev/null; then
echo "no internet | restarting network service"
fi