#!/bin/bash

cd /var/www/game-of-life
mvn clean install
cd gameoflife-web
nohup mvn jetty:run &