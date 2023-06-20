#!/usr/bin/env bash

mkdir -p -m 750 ./data
mkdir -p -m 750 ./manticore.conf

chown -R 1000:1000 ./data
chown -R 1000:1000 ./manticore.conf

docker-compose up -d;
sleep 30s;