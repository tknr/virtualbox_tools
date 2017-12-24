#!/bin/bash -x
export IFS=$'\n'
argv=("$@")
CMDNAME=`basename $0`

if [ $# -eq 0 ]; then
	echo "Usage : ${CMDNAME} [vmname]"
	VBoxManage list vms
	exit 1
fi

VMNAME=$1
DATE=`date "+%Y%m%d%H%M%S"`
VBoxManage snapshot "${VMNAME}" take ${DATE}


