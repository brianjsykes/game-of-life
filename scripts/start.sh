#!/bin/bash

cd /tmp/game-of-life && mvn install
cd gameoflife-web && nohup mvn jetty:run &
