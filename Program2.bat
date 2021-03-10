ECHO OFF 
CLS
 
:MENU 
ECHO. 
ECHO * DOS Commands *
ECHO. 
ECHO 1.   List Files
ECHO 2.   Show system help 
ECHO 3.   Show system path
ECHO 4.   Display command history
ECHO 5.   Show tree of files
ECHO 6.   Backup files
ECHO.
ECHO 99.   Exit
ECHO. 

SET /P M=Type 1, 2, 3, 4, 5, 6, or 99 then press ENTER: 
IF %M%==1 GOTO DIRECTORY 
IF %M%==2 GOTO HELP 
IF %M%==3 GOTO PATH 
IF %M%==4 GOTO HIST
IF %M%==5 GOTO TREE
IF %M%==6 GOTO BACKUP
IF %M%==99 GOTO EOF

:DIRECTORY
dir
GOTO MENU 

:HELP 
help
GOTO MENU 

:PATH 
path
GOTO MENU 

:HIST
doskey /history
GOTO MENU

:TREE
tree
GOTO MENU

:BACKUP
mkdir BackupFolder

copy *.txt BackupFolder
copy *.doc BackupFolder

dir BackupFolder
GOTO MENU

:EOF 
 
 