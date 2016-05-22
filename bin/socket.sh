#!/bin/bash

ITCsocketEncodeMessage()
{
	if [ -z "$1" ]
	then
		echo "Socket Encode Message is empty."
	else
		openssl enc -base64 <<< $1
	fi
}

ITCsocketDecodeMessage()
{
	if [ -z "$1" ]
	then
		echo "Socket Decode Message is empty."
	else
		openssl enc -base64 -d <<< $1
	fi
}

ITCSocketSend()
{
	if [ -z "$1" ]
	then
		echo "Socket Decode Message is empty."
	else
		ITC_SOCKET_SEND_STATUS=$(echo $1 > /dev/tcp/127.0.0.1/4444)
	fi
}