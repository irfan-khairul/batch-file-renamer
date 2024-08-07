@echo off
setlocal enabledelayedexpansion

rem Prompt user for the location of the text file that contains new names
set /P "newNamesFile=Please enter the full path to the new names file (e.g., C:\path\to\your\file.txt): "

rem Check if the new names file exists
if not exist "%newNamesFile%" (
    echo The specified new names file does not exist. Please check the path and try again.
    pause
    exit /b
)

rem Prompt user for the directory containing the files to rename
set /P "directory=Please enter the full path to the folder containing the files to rename: "

rem Change to the specified directory
cd /d "%directory%"
if errorlevel 1 (
    echo The specified directory does not exist. Please check the path and try again.
    pause
    exit /b
)

rem Pause to allow user to verify the folder
echo You have selected: %directory%

rem Prompt user for the file extension
set /P "fileExtension=Please enter the file extension for the new names (e.g., .txt): "

rem Initialize a counter
set count=1

rem Pause to allow user to identify old file name
set "baseOldName=lesson"
set /P "baseOldName=Please enter the old file names: "

rem Read the new names from the specified text file
for /f "usebackq delims=" %%A in ("%newNamesFile%") do (
    set "newName=%%A%fileExtension%"

    rem Construct the old filename using the defined base name and count
    set "oldName=!baseOldName!!count!%fileExtension%"

    rem Check if the old file exists
    if exist "!oldName!" (
        echo Renaming "!oldName!" to "!newName!"
        ren "!oldName!" "!newName!"
    ) else (
        echo File "!oldName!" does not exist.
    )
    
    set /a count+=1
)

echo Renaming done!
endlocal
pause
