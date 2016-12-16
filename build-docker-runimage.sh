#!/usr/bin/env bash
# Build docker image and push to registry

./build-gobinary.sh
docker build -t statsgodrun -f Dockerfile.run .

docker tag statsgodrun tp-registry.vivint.com:5000/statsgodrun
# docker push tp-registry.vivint.com:5000/statsgodrun

docker tag statsgodrun tp-registry.vivint.com:5000/statsgodrun:1
# docker push tp-registry.vivint.com:5000/statsgodrun:1
