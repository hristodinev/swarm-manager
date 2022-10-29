#!/bin/bash

echo "Swarm Init..."

docker swarm init --advertise-addr 192.168.99.101

echo "Create token"

docker swarm join-token --quiet worker > /vagrant/worker_token