#!/bin/bash

ITCMonitorProcesses()
{
	COLUMNS="pid,ppid,pcpu,tt,tid,class,rtprio,ni,pri,psr,pcpu,stat,fname,tmout,f,wchan,wchan:14,comm,euid,ruid,tty,tpgid,sess,pgrp,user"

	watch -p -t -n 1 \
		"ps -ex -Ao "$COLUMNS" | \
			awk -F' ' '"'{print "SERVER_PS;"$HOSTNAME";"$IP";$2;$1;$3;"$4";"$5";"$6";"$7";"$8;$9;$10;$11;$12;$13;$14;$15;$16;$17;$18;$19;$20;$21;$22;$23;$24;$25}'"'"
}