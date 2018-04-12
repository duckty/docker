FROM ubuntu:16.04
MAINTAINER SA "concuadong89@gmail.com"
RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update && apt-get install -y mongodb-org=2.6.12 mongodb-org-server=2.6.12 mongodb-org-shell=2.6.12 mongodb-org-mongos=2.6.12 mongodb-org-tools=2.6.12

COPY start.sh /
COPY mongod.conf /etc/
COPY init.sh /opt/

ENTRYPOINT ["/start.sh"]

