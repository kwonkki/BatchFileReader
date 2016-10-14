REM This should allow people to read .txt files from batch
@echo off
:Begin
cls REM This is to clear out the screen when the man program starts
echo What is the directory of the file?
set /p Directory=%Input% REM Inputs the directory
cd %Directory% >nul REM Changes the directory
echo What is the File's name? (No extension)
set /p Filename=%Input% REM Inputs the file's name
set Filename=%Filename%.txt REM Adds the .txt file extension to the File, simplifying the input
echo This is the path, correct?
echo %Directory%%Filename% REM Displays the path, and inquires if it is correct. User responds in a verbose boolean
set /p ifstatement=%Input%
if /i "%ifstatement%"=="Yes" goto Readthefile
if /i "%ifstatement%"=="No" goto Begin

:Readthefile
TYPE %Directory%%Filename% REM Reads it
pause >nul
exit
