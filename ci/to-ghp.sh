#!/bin/sh
set -euf
cd "$(dirname "$(readlink -f "$0")")"/..

: ${GH_TOKEN?must provide GH_TOKEN (https://github.com/settings/tokens)}
GH_REPO=${GH_REPO:-dev.eloop.org}
CNAME=${CNAME:-$GH_REPO}

echo "${CNAME}" > output/CNAME
sed -i "s;^\(SITEURL\).*;\1 = 'http://${CNAME}/';" ./pelicanconf.py

python "$(command -v ghp-import)" output -n
git push -fq "https://${GH_TOKEN}@github.com/eloop-congress/${GH_REPO}.git"  gh-pages

echo "Finished deployment for ${CNAME}" >&2
