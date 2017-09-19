#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"
GH_REPO=blog.eloop.org ./to-ghp.sh
