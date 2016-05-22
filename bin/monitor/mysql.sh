#!/bin/bash

ITCMonitorMysql ()
{
	watch -n ${POOL_INTERVAL} \
		"mysqladmin -C"
} 