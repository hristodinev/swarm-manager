#!/bin/bash

echo "* Add hosts ..."
echo "192.168.99.101 swarm-manager.test swarm-manager" >> /etc/hosts
echo "192.168.99.102 swarm-worker1.test swarm-worker1" >> /etc/hosts
echo "192.168.99.103 swarm-worker2.test swarm-worker2" >> /etc/hosts

echo "* Install Additional Packages ..."
apt-get install -y jq tree git