#!/bin/bash

SCRIPT=$(realpath "$0")
DIR=$(dirname "$SCRIPT")

NAME="ITC Monitor"

SOCKET_POOL_INTERVAL="1" # SECONDS
SOCKET_POOL_HOST="127.0.0.1"
SOCKET_POOL_PORT="4444"
SOCKET_POOL_LOG=$DIR/../logs/socket.log

SOCKET_AGENT_HOSTNAME=$(hostname)
SOCKET_AGENT_IP4=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
SOCKET_AGENT_IP6=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')

source "$DIR/header.sh" $1
source "$DIR/socket.sh" $1
source "$DIR/monitor/cpu.sh" $1
source "$DIR/monitor/disk.sh" $1
source "$DIR/monitor/mail.sh" $1
source "$DIR/monitor/mysql.sh" $1
source "$DIR/monitor/netstat.sh" $1
source "$DIR/monitor/network.sh" $1
source "$DIR/monitor/processes.sh" $1
source "$DIR/monitor/pool.sh" $1
source "$DIR/monitor/tcpdump.sh" $1

ITCMonitorStart()
{
	ITCMonitorPool
	#(ITCMonitorDisk > /dev/tcp/127.0.0.1/4444)
	# (ITCMonitorConnection )
    # (ITCMonitorCPU > /dev/tcp/127.0.0.1/4444)
	# 
	# (ITCMonitorNetstat > /dev/tcp/127.0.0.1/4444)
	# ITCMonitorConnection
	# (ITCMonitorMail)
	# (ITCMonitorMysql)
	# (ITCMonitorNetwork)
	# 
	# (ITCMonitorProcesses)
}

ITCMonitor()
{
	case "$1" in

		start)
			ITCMonitorStart $2
			;;

		cpu)
            ITCMonitorCPU $2
            ;;

        disk)
            ITCMonitorDiskUsage $2
            ;;

		mail)
            ITCMonitorMail $2
            ;;

        mysql)
            ITCMonitorMysql $2
            ;;

        network)
            ITCMonitorNetwork $2
            ;;

        netstat)
        	ITCMonitorNetstat $2
        	;;

        processes)
        	ITCMonitorProcesses $2
        	;;

		*)
			ITCMonitorHeader
			printf "Service " $NAME usage" start-server|start|restart|cpu|disk|mail|mysql|network|netstat|processes"
  			;;
	esac
	exit
}

(ITCMonitor $1)