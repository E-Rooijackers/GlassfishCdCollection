echo msgbox "Starting up! Please wait a moment till Cd Collection opens in your browser.." > %tmp%\tmp.vbs
cscript /nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs

ECHO glassfish wordt gestart..
START glassfish\bin\startserv.bat
timeout /T 20 /NOBREAK
ECHO database wordt gestart..
START javadb\bin\startNetworkServer.bat
timeout /T 10 /NOBREAK

START "" http://localhost:8080/CdCollectionWeb/
ECHO Succes!