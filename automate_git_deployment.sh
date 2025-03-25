# script_name: automate_git_deployment.sh
# author: Rameshwar Waghchaure
# version: v3
# purpose: this script will pill code from GitHub every 1 day from GitHub, after pulling code application service 
required to restart

#!/bin/bash
REPO_DIR = /var/www
cd $REPO_DIR

git pull origin main
systemctl restart myapp
echo "deployment completed at $(date)"