#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'eloop team'
SITENAME = 'eloop 2016'
SITEURL = ""
SITETITLE = "eloop 2016"
SITESUBTITLE = "Continous Delivery Conference"

PATH = 'content'

TIMEZONE = 'Europe/Berlin'

DEFAULT_LANG = 'de'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

FAVICON = SITEURL + "/images/favicon.png"

STATIC_PATHS = ["images"]
SUMMARY_MAX_LENGTH = None

#LINKS = ((),)

# Social widget
SOCIAL = (("twitter", "https://twitter.com/eloop_congress"),
		  ("envelope-o", "mailto:kontakt@eloop.org"))

DEFAULT_PAGINATION = False

THEME = "themes/Flex"

SITELOGO = SITEURL + "/images/logo_web.png"

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True
