
:Serverstart
@echo off

SETLOCAL ENABLEDELAYEDEXPANSION

	:: DEFINE the following variables where applicable to your server
	SET modname="ENTER YOUR MODS HERE"
	SET Servermod="ENTER SERVER MOD NAMES HERE"
	SET yourservername="ENTER YOUR SERVER NAME HERE"
	SET A3serverPath="ADD SERVER filePath HERE"
	SET ServerIPAddress="127.0.0.1"
	SET port="EnterServerPortHERE"
	set process_name=arma3server.exe
	set process_pid=

tasklist /nh /fi "imagename eq %process_name%" | find /i "%process_name%" > nul && set process_pid=%errorlevel%

if "%process_pid%" == "0" (
    echo Process %process_name% is not running.
) else (
    echo Process %process_name% is running with PID %process_pid%.
)
		

:: _________________________________________________________



echo **++~~ Your Arma 3 server is now Starting - To restart server, close the Arma window ~~++**
timeout 5
start "" /min /wait %A3serverPath%\arma3server.exe -mod=%modname%; -servermod=%Servermod%; -config=config.cfg -ip=%ServerIPAddress% -port=%port% -bepath=battleye -profiles=%yourservername% -cfg=basic.cfg -name=%yourservername%
CLS
echo **++~~ Your Arma 3 server is now Re-starting Please wait five seconds.  ~~++**
timeout 5

goto Serverstart
