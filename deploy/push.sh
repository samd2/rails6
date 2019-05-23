#!/bin/sh
set -x

LC=$(git rev-parse --short HEAD)
docker build -f Dockerfile -t sdarwin/webapp:${LC} .
docker push sdarwin/webapp:${LC}
kubectl set image deployment webapp webapp=sdarwin/webapp:${LC}
