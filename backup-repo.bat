@ECHO OFF
:: Makes an SVN backup of the TortoiseSVN repository and then copies it to another drive.
TITLE Backup TortoiseSVN Repository

ECHO Making backup of repository...

:: Get the current date
SET DATETIME=%DATE:~0,2%-%DATE:~3,2%-20%DATE:~8,4%-%TIME:~0,2%%TIME:~2,3%
:: Remove the colon (':') from the datetime string
SET FILEDATE=%DATETIME::=-%
:: Replace empty character (space) with 0
SET FILEDATE=%FILEDATE: =0%

:: Make the TortoiseSVN backup
svnadmin hotcopy C:\Respository C:\SVNBackUp_%FILEDATE%

ECHO Copying Workspace folder to other drive...

:: Copy workspace folder to drive folder recursively with empty folders and all file information
robocopy C:\Repository-Workspace D:\Repository-Workspace /COPYALL /E