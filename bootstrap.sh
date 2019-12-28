#!/bin/bash

echo "UPDATE REPO"
apt-get update -y -q

echo "CREATE DOCKER SERVICE DIR"
mkdir -p /etc/systemd/system/docker.service.d/

echo "COPY DOCKER SERVICE FILE"
cp /vagrant/startup_options.conf /etc/systemd/system/docker.service.d/startup_options.conf

echo "RELOAD DOCKER DEAMON"
systemctl daemon-reload
systemctl restart docker.service
