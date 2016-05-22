#!/bin/bash

ITCMonitorNetwork ()
{
	#IP=(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
	#echo $IP

	(watch -t -n ${POOL_INTERVAL}  \ "ip -stats addr")
}