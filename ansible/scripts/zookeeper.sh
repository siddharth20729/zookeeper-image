#!/bin/bash

set -eu -o pipefail

ZOOKEEPER_VERSION=3.4.6

wget http://www.us.apache.org/dist/zookeeper/KEYS
wget http://www.apache.org/dist/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz.asc
wget http://mirror.cc.columbia.edu/pub/software/apache/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz
gpg --import KEYS
gpg --verify zookeeper-$ZOOKEEPER_VERSION.tar.gz.asc zookeeper-$ZOOKEEPER_VERSION.tar.gz

sudo tar -xzf zookeeper-$ZOOKEEPER_VERSION.tar.gz
sudo mv --no-target-directory zookeeper-$ZOOKEEPER_VERSION/ /var/lib/zookeeper
