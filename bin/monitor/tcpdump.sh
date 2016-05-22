#!/bin/bash

ITCMonitorTCP()
{
	sudo watch -n ${POOL_INTERVAL} \
		"tcpdump -e -i any tcp port $SOCKET_PORT"
}