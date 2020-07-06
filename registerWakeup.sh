#!/bin/bash

dirpath=`dirname $0`
cd $dirpath

CONNECT_MENU="연결"
if [ -n "$1" ];then
    CONNECT_MENU=$1
fi

BLUETOOTH_DEVICE_NAME="Pods"
DEVICE_CONF_FILE="./device.conf"
if [ -f $DEVICE_CONF_FILE ];then
    BLUETOOTH_DEVICE_NAME=$(cat "$DEVICE_CONF_FILE" | grep BLUETOOTH_DEVICE_NAME | sed -e "s/BLUETOOTH_DEVICE_NAME=//g")
fi

./sleepwatcher_2.2.1/sleepwatcher -w "osascript ./airpods.scpt ${CONNECT_MENU} \"${BLUETOOTH_DEVICE_NAME}\""
