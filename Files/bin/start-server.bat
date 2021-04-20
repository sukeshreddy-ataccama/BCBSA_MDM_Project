@echo off
set JAVA_OPTS=-DenableRecordCounters=true -Dnme.parallel.strategy=none -Dlogging.logbackExtensionFile=..\etc\logback-extension.xml -Xmx512m 

REM other valuable runtime parameters 
REM -Dnme.taskExecutor.debug=true

call "%DQC_HOME%\bin\onlinectl.bat" -config ..\etc\mdm.serverConfig start
if not errorlevel 1 goto done
pause "Server startup failed. Press any key when ready"
:done
