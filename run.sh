#!/usr/bin/env bash

# generate config and start container

graphite_host=$(python -c "import vivint_conf;print vivint_conf.get('statsd','GRAPHITE_HOST')")
sed -i "s#{{statsd.host}}#$graphite_host#" config.yml
docker run -d --name statsgod -v /var/run/statsgod/:/var/run/statsgod/ -v $(pwd)/config.yml:/config.yml --add-host tp-dev-log-1.vivint.com:192.168.212.211 tp-registry.vivint.com:5000/statsgodrun:1
