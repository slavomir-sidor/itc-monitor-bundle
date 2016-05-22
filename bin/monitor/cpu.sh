#!/bin/bash

ITCMonitorCPU()
{
	#COLUMNS=(pid pcpu)

	watch -p -t -n ${POOL_INTERVAL} \
		"ps -eao "pid,pcpu" | awk -F' ' '"'{print "AGENT:"$1";"$2}'"'"
}