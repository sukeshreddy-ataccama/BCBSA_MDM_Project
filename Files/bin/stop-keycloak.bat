@echo off

set KEYCLOAK_HOME=%DQC_HOME%\..\keycloak
set JAVA_OPTS=-Djboss.socket.binding.port-offset=3 %JAVA_OPTS%

call "%KEYCLOAK_HOME%\bin\jboss-cli.bat" --controller=localhost:9993 --connect command=:shutdown