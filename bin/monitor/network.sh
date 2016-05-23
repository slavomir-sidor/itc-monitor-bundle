#!/bin/bash

MONITOR_AGENT_HOSTNAME=$(hostname)
MONITOR_AGENT_IP4=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
MONITOR_AGENT_IP6=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')


ITCMonitorNetwork ()
{
	watch -t -n ${POOL_INTERVAL}  \ 
		"ip -stats addr"
}