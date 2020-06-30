#!/bin/bash

LANGUAGE=ko
if [ -n "$1" ];then
    LANGUAGE=$1
fi

LAUNCH_AGENTS_DIR=~/Library/LaunchAgents
PLIST_SOURCE_FILE=com.kekemu.wakeupairpods.plist.origin
PLIST_TARGET_FILE=com.kekemu.wakeupairpods.${LANGUAGE}.plist
CURRENT_DIR=$(pwd)
echo -n "create LaunchAgents Directory..."
mkdir -p $LAUNCH_AGENTS_DIR/
echo "ok!"
echo -n "create plist file from ${PLIST_SOURCE_FILE}..."
cat ./${PLIST_SOURCE_FILE} | sed "s%{basePath}%${CURRENT_DIR}%g" | sed "s%{lang}%${LANGUAGE}%g" > $PLIST_TARGET_FILE 
echo "ok!"
echo -n "move plist file to LaunchAgents Directory..."
\mv -f ./$PLIST_TARGET_FILE $LAUNCH_AGENTS_DIR/
echo "ok!"
echo -n "load plist file..."
launchctl load $LAUNCH_AGENTS_DIR/$PLIST_TARGET_FILE
echo "ok!! DONE."
