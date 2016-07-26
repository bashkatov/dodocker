#!/bin/bash

DIGITALOCEAN_ACCESS_TOKEN=`cat ~/.ssh/digital_ocean_token`

docker-machine create --driver digitalocean \
	       --digitalocean-access-token=$DIGITALOCEAN_ACCESS_TOKEN \
	       --digitalocean-image=ubuntu-14-04-x64 \
	       --digitalocean-region=fra1 \
	       --digitalocean-size=512mb \
	       droplet-one

eval $(docker-machine env droplet-one)

