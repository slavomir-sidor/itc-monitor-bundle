#!/bin/bash

SCRIPT=$(realpath "$0")
DIR=$(dirname "$SCRIPT")

NAME="ITC Monitor"
SERVICE_STATUS_FORMAT_MESSAGE="%-60s"
SERVICE_STATUS_FORMAT_GREEN="\033[32m%s\e[0m"
SERVICE_STATUS_FORMAT_ORANGE="\033[33m%s\e[0m"
SERVICE_STATUS_FORMAT_RED="\033[31m%s\e[0m"


source "$DIR/monitor/header.sh" $1
source "$DIR/monitor/cpu.sh" $1
source "$DIR/monitor/disk.sh" $1
source "$DIR/monitor/mail.sh" $1
source "$DIR/monitor/mysql.sh" $1
source "$DIR/monitor/netstat.sh" $1
source "$DIR/monitor/network.sh" $1
source "$DIR/monitor/processes.sh" $1
source "$DIR/monitor/socket.sh" $1

ITCMonitorStart()
{
	ITCMonitorCPU
	ITCMonitorDisk
	ITCMonitorMail
	ITCMonitorMysql
	ITCMonitorNetwork
	ITCMonitorNetstat
	ITCMonitorProcesses
}

ITCMonitor()
{
	case "$1" in

		start-server)
			ITCMonitorServer
			;;

		start)
			ITCMonitorStart
			;;
		cpu)
           ITCMonitorCPU 
            ;;

        disk)
            ITCMonitorDiskUsage
            ;;

		mail)
            ITCMonitorMail
            ;;

        mysql)
            ITCMonitorMysql
            ;;

        network)
            ITCMonitorNetwork
            ;;

        netstat)
        	ITCMonitorNetstat
        	;;

        processes)
        	ITCMonitorProcesses
        	;;

		*)
			ITCMonitorHeader
			printf "Service $SERVICE_STATUS_FORMAT_GREEN usage: $SERVICE_STATUS_FORMAT_ORANGE [$SERVICE_STATUS_FORMAT_ORANGE]\n" $NAME $NAME "start-server|start|restart|cpu|disk|mail|mysql|network|netstat|processes"
  			;;
	esac
	exit
}

(ITCMonitor $1)