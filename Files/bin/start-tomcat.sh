#!/bin/bash

#export DQC_HOME=${DQC_HOME:-`readlink -f ../../../../runtime`}
if [ -z "$DQC_HOME" ]; then
	echo "DQC_HOME variable is not set!" >&2
	
	exit 1
fi

export CATALINA_HOME="$DQC_HOME/../tomcat"
export JRE_HOME="$DQC_HOME/../jre"

"$DQC_HOME"/../tomcat/bin/catalina.sh run
