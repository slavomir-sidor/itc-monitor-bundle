#!/bin/bash


ITCMonitorPool()
{
	echo "Starting Pool"
	ITC_MONITOR_POOL_STATUS=$(nc -k -C -l $SOCKET_PORT)
	echo "done : " $ITC_MONITOR_POOL_STATUS
}