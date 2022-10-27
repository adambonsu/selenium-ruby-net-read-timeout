#!/usr/bin/env bash

export VERSION_NUMBER=${VERSION_NUMBER:-"latest"}
cd ./server
docker build -f Dockerfile -t fe-cassandra:${VERSION_NUMBER} .
cd ../
