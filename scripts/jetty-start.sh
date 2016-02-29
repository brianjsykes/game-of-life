#!/bin/bash

cd /tmp/game-of-life
mvn clean install
cd gameoflife-web
nohup mvn jetty:run &
