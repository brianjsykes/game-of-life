#!/bin/bash

cd /tmp/game-of-life
ls
mvn clean install
cd gameoflife-web
nohup mvn jetty:run &
