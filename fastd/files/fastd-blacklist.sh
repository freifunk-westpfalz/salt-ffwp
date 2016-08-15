#!/bin/bash
PEER_KEY=$1

if /bin/grep -Fq $PEER_KEY /home/freifunk/config-ffwp/fastd-blacklist.json; then
	exit 1
else
	exit 0
fi
