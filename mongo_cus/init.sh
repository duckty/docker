#!/bin/bash
set -e
   echo "initiating mongo ..."
   sudo mkdir -p /data/log
   sudo mkdir -p /data/mongodb 
   sudo chown -R mongodb:nogroup /data
   #sudo -u mongodb -H mongod -f /opt/mongod_nojournal.conf  &

