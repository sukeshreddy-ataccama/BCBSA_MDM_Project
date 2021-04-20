#!/bin/bash

#export DQC_HOME=${DQC_HOME:-`readlink -f ../../../../runtime`}
export KEYCLOAK_HOME="$DQC_HOME/../keycloak"
export JAVA_OPTS="-Djboss.socket.binding.port-offset=3 ${JAVA_OPTS}"

$KEYCLOAK_HOME/bin/jboss-cli.sh --controller=localhost:9993 --connect command=:shutdown
