@ECHO OFF
:: Makes an SVN backup of the TT284 EMA repository and then copies it to Dropbox.
TITLE Backup TT284 EMA Repository

ECHO Making backup to Dropbox...

:: Get the current date
SET DATETIME=%DATE:~0,2%-%DATE:~3,2%-20%DATE:~8,4%-%TIME:~0,2%%TIME:~2,3%
:: Remove the colon (':') from the datetime string
SET FILEDATE=%DATETIME::=-%
:: Replace empty character (space) with 0
SET FILEDATE=%FILEDATE: =0%

:: Make the TortoiseSVN backup
svnadmin hotcopy D:\TT284-EMA D:\Dropbox\SVNBackUp_TT284-EMA_%FILEDATE%

ECHO Copying Workspace to Dropbox...

:: Copy workspace folder to Dropbox folder recursively with empty folders and all file information
robocopy D:\TT284-EMA-Workspace D:\Dropbox\TT284-EMA-Workspace /COPYALL /E