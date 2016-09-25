#!/bin/sh
docker run -d \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -p 57575:57575 -p 3000:3000 \
    furikuri/docker-workshop:latest 1>&2

if [ $? -ne "0" ]; then
   echo "Error starting container: $?" 1>&2
   exit 1
fi

sleep 10

echo "http://localhost:3000/"
