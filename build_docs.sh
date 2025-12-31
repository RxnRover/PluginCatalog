#!/usr/bin/env bash

# Generate Catalog Script
#
# Generates the plugin catalog using Sphinx. This script will create a 
# virtual environment at <plugin_catalog>/venv/ to install dependencies.

PY=python3
PIP=pip
REQFILE=./requirements.txt
VENV=venv
VENVDIR=./venv

# Flags
VENV_SUCCESS=0
NEW_VENV=0

# Check for virtual environment. Set it up if it does not exist.
# Note: [ -d <path> ] checks if the directory exists at the given path
if [ ! -d ${VENVDIR} ] ; then
    echo "Creating virtual environment..."
    ${PY} -m ${VENV} ${VENVDIR} && VENV_SUCCESS=1 && NEW_VENV=1
else
    VENV_SUCCESS=1
fi

if (( ${VENV_SUCCESS} == 1 )); then
    echo "Activating virtual environment..."
    source ${VENVDIR}/bin/activate
else
    echo "Virtual environment creation failed. Please make sure you have write permissions to the documentation directory."
    exit 1
fi

if (( ${NEW_VENV} == 1 )); then
    echo "Installing dependencies..."
    ${VENVDIR}/bin/python -m ${PIP} install -r ${REQFILE}
fi

# Generate Sphinx documentation
echo "Generating documentation with Sphinx..."

make html
