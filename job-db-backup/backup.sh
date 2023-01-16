#!/bin/bash

echo "host: $DB_HOST
bucket: $BUCKET
dumping..."

file=$(date +\%Y-\%m-\%d).sql

mysqldump -u root -p -h ${DB_HOST} --all-databases --column-statistics=0 > /root/$file

aws s3 cp /root/$file ${BUCKET}

echo "Done!"
