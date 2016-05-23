#!/bin/bash


ITCMonitorPush()
{
	echo "Starting Pool on addr: " $MONITOR_POOL_HOST "port: " $MONITOR_POOL_PORT
	# MONITOR_POOL_HOST="127.0.0.1"
	# MONITOR_POOL_PORT="4444"
	# MONITOR_POOL_LOG=$DIR/../logs/socket.log

	(nc -k --listen -C -l $MONITOR_POOL_PORT > $MONITOR_POOL_LOG)

	echo "done"
}