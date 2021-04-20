@echo off

rem set PROJECT_HOME="%~dp0.."
rem set DQC_HOME_F="%DQC_HOME%"
set CATALINA_HOME=%DQC_HOME%\..\tomcat
set JRE_HOME=%DQC_HOME%\..\jre
rem set CATALINA_OPTS=%CATALINA_OPTS% -Dproject.home=%PROJECT_HOME% -Ddqc.home=%DQC_HOME_F%

call "%CATALINA_HOME%\bin\startup.bat"