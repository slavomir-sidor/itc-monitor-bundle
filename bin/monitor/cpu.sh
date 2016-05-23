#!/bin/bash

ITCMonitorCPU()
{
	#COLUMNS=(pid pcpu)

	watch -p -t -n ${MONITOR_INTERVAL} "ps -eao "pid,pcpu" | awk -F' ' '"'{print "AGENT:"$1";"$2}'"'" > /dev/tcp/127.0.0.1/4444
}