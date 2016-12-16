#!/usr/bin/env bash

docker run -v $(pwd)/:/usr/share/go/src/github.com/acquia/statsgod tp-registry.vivint.com:5000/statsgodbuild:1 /bin/bash -c "make"

#output is in ./output
