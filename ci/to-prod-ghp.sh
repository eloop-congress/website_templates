#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"
GH_REPO=eloop.org ./to-ghp.sh
