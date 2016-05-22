#!/bin/sh
set -euf
cd "$(dirname "$(readlink -f "$0")")"/..

: ${GH_TOKEN?must provide GH_TOKEN (https://github.com/settings/tokens)}
GH_REPO=${GH_REPO:-dev.eloop.org}
CNAME=${CNAME:-$GH_REPO}

echo "rebuilding pelican with correct siteurl"
sed -i "s;^\(SITEURL\).*;\1 = 'http://${CNAME}/';" ./pelicanconf.py
pelican

echo "adding CNAME file"
echo "${CNAME}" > output/CNAME

echo "ghp-import"
python "$(command -v ghp-import)" output

echo "push to github"
git push -fq "https://${GH_TOKEN}@github.com/eloop-congress/${GH_REPO}.git"  gh-pages

echo "Finished deployment for ${CNAME}" >&2
