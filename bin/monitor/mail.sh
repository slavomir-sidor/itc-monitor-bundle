#!/bin/bash

ITCMonitorMail ()
{
	watch -t -n ${POOL_INTERVAL} \
		"mailq"
}