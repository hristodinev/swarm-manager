#!/bin/bash

echo "Swarm Join..."

docker swarm join --token $(cat /vagrant/worker_token) --advertise-addr 192.168.99.102 192.168.99.101:2377