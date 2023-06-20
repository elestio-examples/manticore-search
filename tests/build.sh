#!/usr/bin/env bash

sed -i 's/^ADD \*deb \/packages\//\# ADD \*deb \/packages\//' Dockerfile

docker build . --tag elestio4test/manticoresearch:latest