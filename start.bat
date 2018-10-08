ECHO glassfish wordt gestart..
START glassfish\bin\startserv.bat
ECHO database wordt gestart..
START javadb\bin\startNetworkServer.bat
START "" http://localhost:8080/CdCollectionWeb2800808403250964589/
ECHO Succes!