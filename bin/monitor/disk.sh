#!/bin/bash

ITCMonitorDiskUsage()
{

	COLUMNS[0]="Proto"
	COLUMNS[1]="Recv-Q"
	COLUMNS[2]="Send-Q"
	COLUMNS[3]="Local Address"
	COLUMNS[4]="Foreign Address"
	COLUMNS[5]="State"
	
	sudo watch -p -t -n ${POOL_INTERVAL} \
		"iotop -a -qqq"
		
}