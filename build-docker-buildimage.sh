#!/usr/bin/env bash
# Build docker image and push to registry

docker pull tp-registry.vivint.com:5000/statsgodbuild

docker build -t statsgodbuild .

docker tag statsgodbuild tp-registry.vivint.com:5000/statsgodbuild
docker push tp-registry.vivint.com:5000/statsgodbuild

docker tag statsgodbuild tp-registry.vivint.com:5000/statsgodbuild:1
docker push tp-registry.vivint.com:5000/statsgodbuild:1
