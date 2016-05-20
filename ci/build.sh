#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"/..

git submodule update --init
pip install pelican markdown ghp-import
pelican
