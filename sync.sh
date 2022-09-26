#!/bin/bash
#set -x

CUR_DIR=`dirname $(readlink -f $0)`
source "$CUR_DIR/config"


##### BEGIN USER SETTINGS ###############
SOURCE_FILE="$CUR_DIR/logs/$SCHOOL.log"
TARGET_DIR="/var/www/html/escuelas/$SCHOOL"
TARGET_FILE="$TARGET_DIR/registro_speedtest.log"
HOST_IP="davitel.luyo.com.ar"
HOST_USER="syadmin"
##### END USER SETTINGS #################

ssh -p 61195 syadmin@davitel.luyo.com.ar "mkdir -p $TARGET_DIR"
scp -P 61195 "$SOURCE_FILE" "$HOST_USER@$HOST_IP:$TARGET_FILE"


