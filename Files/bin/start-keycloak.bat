@echo off

set KEYCLOAK_HOME=%DQC_HOME%\..\keycloak
set JAVA_OPTS=-Dkeycloak.import=""%KEYCLOAK_HOME%\ataccamaone.json"" -Djboss.socket.binding.port-offset=3 -Djava.net.preferIPv4Stack=true %JAVA_OPTS%

call "%KEYCLOAK_HOME%\bin\standalone_fix.bat" -b 0.0.0.0 
