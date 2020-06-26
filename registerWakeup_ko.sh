#!/bin/bash

dirpath=`dirname $0`
cd $dirpath
nohup ./sleepwatcher_2.2.1/sleepwatcher -w "osascript ./airpods.scpt 연결" &
