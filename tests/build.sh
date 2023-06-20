#!/usr/bin/env bash

sed -i 's/^ADD \*deb \/packages\//\# ADD \*deb \/packages\//' Dockerfile

mkdir -p -m 750 ./data
mkdir -p -m 750 ./manticore.conf

chown -R 1000:1000 ./data
chown -R 1000:1000 ./manticore.conf

docker build . --tag elestio4test/manticoresearch:latest