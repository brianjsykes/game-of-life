#!/bin/bash

mvn clean install
cd gameoflife-web
nohup mvn jetty:run &
$PID=$!
sleep 60 
kill $PID