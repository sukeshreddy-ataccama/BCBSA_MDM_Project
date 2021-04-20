#!/bin/bash

#export DQC_HOME=${DQC_HOME:-`readlink -f ../../../../runtime`}
if [ -z "$DQC_HOME" ]; then
	echo "DQC_HOME variable is not set!" >&2
	
	exit 1
fi

export JAVA_OPTS="-DenableRecordCounters=true -Dnme.parallel.strategy=none -Dlogging.logbackExtensionFile=../etc/logback-extension.xml -Xmx512m" 

# other valuable runtime parameters 
# -Dnme.taskExecutor.debug=true

"$DQC_HOME"/bin/onlinectl.sh -config ../etc/mdm.serverConfig start
if [ ! $? == 0 ]; then
	echo "Server startup failed. Press Enter when ready"
	read a
fi
