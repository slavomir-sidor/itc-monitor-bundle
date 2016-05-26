#!/bin/bash

ITCInfo ()
{
	echo 
	echo "ITC OS Info"
	echo 
	echo "Internal Variables"
	echo 
	echo "# The path to the Bash binary itself:"
	echo "BASH        : ${BASH}"
	echo
	echo "# An environmental variable pointing to a Bash startup file to be read when a script is invoked:"
	echo "BASH_ENV    : $BASH_ENV"
	echo
	echo "# A variable indicating the subshell level. This is a new addition to Bash, version 3:"
	echo "BASH_SUBSHELL :$BASH_SUBSHELL"
	echo
	echo "Process ID of the current instance of Bash. This is not the same as the $$ variable, but it often gives the same result:"
	echo "BASHPID     : $BASHPID" 
	echo 
	echo "Bash version info:"
	echo "# Major version no : ${BASH_VERSINFO[0]}"
	echo "# Minor version no : ${BASH_VERSINFO[1]}"
	echo "# Patch level      : ${BASH_VERSINFO[2]}"
	echo "# Build version    : ${BASH_VERSINFO[3]}"
	echo "# Release status   : ${BASH_VERSINFO[4]}:"
	echo "# Architecture     : ${BASH_VERSINFO[5]}"
	echo
	echo "The version of Bash installed on the system:" 
	echo "BASH_VERSION : $BASH_VERSION"
	echo 
	echo "A colon-separated list of search paths available to the cd command, similar in function to the $PATH variable for binaries. The $CDPATH variable may be set in the local ~/.bashrc file."
	echo "CDPATH : $CDPATH"
	echo 
	echo "The top value in the directory stack [1] (affected by pushd and popd)."
	echo "This builtin variable corresponds to the dirs command, however dirs shows the entire contents of the directory stack:"
	echo "DIRSTACK : $DIRSTACK"
	echo
	echo "The default editor invoked by a script, usually vi or emacs:" 
	echo "EDITOR: $EDITOR"
	echo 
	echo "Effective user ID number:"
	echo "EUID: $EUID"
	echo 
	echo "Effective user ID number. Caution The $EUID is not necessarily the same as the $UID."
	echo "Identification number of whatever identity the current user has assumed, perhaps by means of su:"
	echo "EUID: $EUID"
	echo 
	echo "Name of the current function:"
	echo "FUNCNAME: $FUNCNAME"
	echo 
	echo "A list of filename patterns to be excluded from matching in globbing:"
	echo "GLOBIGNORE: $GLOBIGNORE"
	echo 
	echo "Groups current user belongs to."
	echo "This is a listing (array) of the group id numbers for current user, as recorded in /etc/passwd and /etc/group:"
	echo "GROUPS: $GROUPS"
	echo 
	echo "Home directory of the user, usually /home/username:"
	echo "HOME: $HOME"
	echo
	echo "The hostname command assigns the system host name at bootup in an init script."
	echo "However, the gethostname() function sets the Bash internal variable \$HOSTNAME."
	echo "HOSTNAME: $HOSTNAME"
	echo 
	echo "host type"
	echo "HOSTTYPE: $HOSTTYPE"
	echo 
}