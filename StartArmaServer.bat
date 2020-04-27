
:Serverstart
@echo off

SETLOCAL ENABLEDELAYEDEXPANSION

	:: DEFINE the following variables where applicable to your server
	SET modname=ENTER YOUR MODS HERE
	SET Servermod=ENTER SERVER MOD NAMES HERE
	SET yourservername=ENTER YOUR SERVER NAME HERE
	SET A3serverPath=ADD SERVER PATH HERE
	SET ServerIPAddress=127.0.0.1
	SET port=EnterServerPortHERE
		

:: _________________________________________________________



echo **++~~ Your Arma 3 server is now Starting - To restart server, close the Arma window ~~++**
timeout 5
start "Arma3Wasteland" /min /wait %A3serverPath%\arma3server.exe -mod=%modname%; -servermod=%Servermod%; -config=config.cfg -ip=%ServerIPAddress% -port=%port% -bepath=battleye -profiles=%yourservername% -cfg=basic.cfg -name=%yourservername%  -autoinit
CLS
echo **++~~ Your Arma 3 server is now Re-starting Please wait five seconds.  ~~++**
timeout 5
goto Serverstart
