#!/bin/bash
export IFS=$'\n'
argv=("$@")
CMDNAME=`basename $0`

if [ $# -eq 0 ]; then
	echo "Usage : ${CMDNAME} <uuid|vmname>"
	VBoxManage list vms
	exit 1
fi

VMNAME=$1
VBoxManage controlvm "${VMNAME}" savestate


