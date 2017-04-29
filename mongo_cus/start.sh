#!/bin/bash
set -e

mongo_stop() {
echo "stopping mongodb ...."
mongo --eval "db.getSiblingDB('admin').shutdownServer()"
exit 0
}
trap mongo_stop  HUP INT QUIT KILL TERM

echo "flag value is $flag"
if [ "$flag" = 'initiate' ]; then
   /bin/bash /opt/init.sh
fi
echo "starting mongo ..."
#sudo -u mongodb -H mongod -f /opt/mongod.conf --smallfiles
sudo -u mongodb -H mongod -f /etc/mongod.conf --smallfiles
echo "shutting down docker container ..."
echo "exited $0"
