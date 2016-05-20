#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"/..

pip install pelican markdown ghp-import
pelican
