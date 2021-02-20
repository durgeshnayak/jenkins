#!/bin/bash

DBHOST=$1
DBPASSWORD=$2
DBNAME=$3
AWSKEYID=$4
AWSSECRETKEY=$5
AWSBUCKET=$6

FILENAME=db-$(date +%H-%M-%S).sql

echo "Taking mysql db backup----------------------------------------------->" 
mysqldump -u root -h $DBHOST -p$DBPASSWORD $DBNAME > /tmp/$FILENAME && \

export AWS_ACCESS_KEY_ID=$AWSKEYID && \
export AWS_SECRET_ACCESS_KEY=$AWSSECRETKEY && \
echo "Uploading db backup to AWS S3 Bucket--------------------------------->" && \
aws s3 cp /tmp/$FILENAME s3://$AWSBUCKET/$FILENAME && \
echo "***----------------------->Upload complete------------------------>***"



