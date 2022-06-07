#!/bin/bash
docker build -t flutter_docker .
docker run  -it -d -v /var/run/docker.sock:/var/run/docker.sock --name flutter_container --privileged -v "$(pwd)":/home/developer/app flutter_docker
docker exec -it flutter_container ../build.sh
docker container stop flutter_container
docker container rm flutter_container