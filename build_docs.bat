@echo off
setlocal enabledelayedexpansion

REM Generate Documentation Script
REM
REM Generates the plugin catalog using Sphinx. This script will create a 
REM virtual environment at <plugin_catalog>/venv/ to install dependencies.

set PY=python
set PIP=pip
set REQFILE=requirements.txt
set VENV=venv
set VENVDIR=venv

REM Check for virtual environment. Set it up if it does not exist.
if not exist %VENVDIR%\ (
    echo.Creating virtual environment...
    %PY% -m %VENV% %VENVDIR% && set VENV_SUCCESS=1 & set NEW_VENV=1
) else (
    set VENV_SUCCESS=1
)

if defined VENV_SUCCESS (
    echo.Activating virtual environment...
    call .\%VENVDIR%\Scripts\activate
) else (
    echo Virtual environment creation failed. Please make sure you have write permissions to the documentation directory.
    goto :eof
)

if defined NEW_VENV (
    echo.Installing dependencies...
    %PY% -m %PIP% install -r %REQFILE%
)

REM Generate Sphinx documentation
echo Generating documentation with Sphinx...

call .\make.bat html

pause