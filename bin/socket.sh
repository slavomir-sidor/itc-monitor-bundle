#!/bin/bash

socketEncodeMessage()
{
	if [ -z "$1" ]
	then
		echo "Socket Encode Message is empty."
	else
		openssl enc -base64 <<< $1
	fi
}

socketDecodeMessage()
{
	if [ -z "$1" ]
	then
		echo "Socket Decode Message is empty."
	else
		openssl enc -base64 -d <<< $1
	fi
}

socketDecodeMessage()
{
	if [ -z "$1" ]
	then
		echo "Socket Decode Message is empty."
	else
		openssl enc -base64 -d <<< $1
	fi
}