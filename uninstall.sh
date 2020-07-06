#!/bin/bash
pid=$(ps -ef | grep "./sleepwatcher_2.2.1/sleepwatcher -w osascript ./airpods.scpt" | grep -v "grep" | awk '{print $2}')
if [ -n "$pid" ];then
    kill -9 $pid
fi

LANGUAGE=ko
if [ -n "$1" ];then
    LANGUAGE=$1
fi
launchctl unload ~/Library/LaunchAgents/com.kekemu.wakeupairpods.${LANGUAGE}.plist
