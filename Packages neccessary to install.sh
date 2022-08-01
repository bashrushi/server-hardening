#!/bin/bash

echo "Downloading & Installing Zip Command"
yum install zip -y
sleep 2
echo "Installation Done"

echo "Downloading & Installing net-tools"
yum install net-tools -y
sleep 2
echo "Installation Done"

echo "Downloading & Installing Bzip2"
yum install bzip2 -y
sleep 2
echo "Installation Done"
echo "Downloading & Installing... LVM2"
yum install lvm2 -y
sleep 2
echo "Installation Done"
sleep 2
echo "Downloading & Installing... gzip"
yum install gzip -y
echo "Installation Done"
