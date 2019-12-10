#!/bin/bash

# concept 2 for monitor only
ITCMonitorNetstat ()
{
	COLUMNS[0]="Proto"
	COLUMNS[1]="Recv-Q"
	COLUMNS[2]="Send-Q"
	COLUMNS[3]="Local Address"
	COLUMNS[4]="Foreign Address"
	COLUMNS[5]="State"

	watch -t -n ${POOL_INTERVAL} \
		"netstat -ntu | sort | uniq -c | sort -n"

	# watch -n 30 "netstat -ntu | cut -d: -f1 | sort | uniq -c | sort -n"
	# watch -n 30 "netstat -ntu | awk '{print \$5}' | cut -d: -f1 | sort | uniq -c | sort -n"
}
