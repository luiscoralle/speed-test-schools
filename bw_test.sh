#!/bin/bash

CUR_DIR=`dirname $(readlink -f $0)`
source "$CUR_DIR/config"

TSTAMP=`date "+%Y-%m-%d %H:%M:%S"`
DOWNLOAD_SPEED=$($CUR_DIR/down.sh)
UPLOAD_SPEED=$($CUR_DIR/up.sh)


echo "['$TSTAMP',$DOWNLOAD_SPEED,$UPLOAD_SPEED]," >> "$CUR_DIR/logs/$SCHOOL.log"

"$CUR_DIR/sync.sh"
