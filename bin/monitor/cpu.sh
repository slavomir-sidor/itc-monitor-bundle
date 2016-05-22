#!/bin/bash

ITCMonitorCPU()
{
	COLUMNS="pid,pcpu"

	watch -p -t -n 1 \
		"ps -eaxo "$COLUMNS" | \
			awk -F' ' '"'{print "SERVER_PS;"$HOSTNAME";"$IP";$2;$1;$3;"$4";"$5";"$6";"$7";"$8;$9;$10;$11;$12;$13;$14;$15;$16;$17;$18;$19;$20;$21;$22;$23;$24;$25}'"'" > /dev/tcp/127.0.0.1/4444

}