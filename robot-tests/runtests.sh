#!/bin/bash

HOST_IP=$(netstat -nr | grep '^0\.0\.0\.0' | awk '{print $2}')
cd /opt/robot
TEST_RESULT=$(xvfb-run pybot --variable URL:http://${HOST_IP}:9090 ./webtests.robot)
echo $TEST_RESULT
if [[ $(echo $TEST_RESULT | grep "| PASS |") ]]; then
	echo PASSED
	exit 0
else 
	echo FAILED
	exit 1
fi