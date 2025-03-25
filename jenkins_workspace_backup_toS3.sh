# automate backup of Jenkins workspace into S3.

BACKUP_DIR='/var/lib/jenkins'
BACKUP_file= "jenkins_workspace_backup_$(date +'%Y-%m-%d').tar.gz"
S3_BUCKET="s3://my-backup-bucket"

echo "creating a backup of $BACKUP_dir"
tar -czf /tmp/$BACKUp_FILE  $BACKUP_DIR

# upload to s3
echo "uploading $BACKUP_FILE to s3..."
aws s3 cp /tmp/$BACKUP_FILE  $S3_BUCKET

# cleanup

rm /tmp/$BACKUP_FILE
echo "backup and upload completed successfully"




