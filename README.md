# Building the Docs

## Prerequisites

- [Python 3.x](https://www.python.org/), pip, and venv

## Building the Docs

Run `build_docs.<ext>` in a terminal, where `<ext>` is either `bat` for 
Windows or `sh` for MacOS and Linux. located at 
`<plugin_catalog>/build_docs.ext` . This script will use Sphinx to generate 
the plugin catalog website in `<plugin_catalog>/build/html`.

**Note:** This script will install Sphinx and its dependencies into a virtual 
environment located at `<plugin_catalog>/venv`. 
