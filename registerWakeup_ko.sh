#!/bin/bash

dirpath=`dirname $0`
cd $dirpath
./sleepwatcher_2.2.1/sleepwatcher -d -w "osascript ./airpods.scpt 연결"
