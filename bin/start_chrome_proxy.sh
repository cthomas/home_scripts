#!/usr/bin/env bash

BROWSER_BIN=""

if [ -n "`which google-chrome`" ]
then
	BROWSER_BIN="google-chrome"
elif [ -n "`which chromium-browser`" ]
then
	BROWSER_BIN="chromium-browser"
fi

if [ -n "$BROWSER_BIN"  ]
then
	$BROWSER_BIN --proxy-server="socks5://localhost:9999"
else
	echo "Could not find Chrome!"
fi
