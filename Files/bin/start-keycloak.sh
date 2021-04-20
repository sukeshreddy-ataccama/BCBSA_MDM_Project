#!/bin/bash

export DQC_HOME=${DQC_HOME:-`readlink -f ../../../../runtime`}
export KEYCLOAK_HOME="$DQC_HOME/../keycloak"
export JAVA_OPTS="-Dkeycloak.import=$KEYCLOAK_HOME/ataccamaone.json -Djboss.socket.binding.port-offset=3 -Djava.net.preferIPv4Stack=true ${JAVA_OPTS}"

$KEYCLOAK_HOME/bin/standalone.sh -b 0.0.0.0
