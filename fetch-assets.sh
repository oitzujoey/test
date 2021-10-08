#!/bin/sh

if [ ! -d "openarena-0.8.8" ]; then
	if [ ! -f "openarena-assets.zip" ]; then
		wget 'http://openarena.ws/request.php?4' -O openarena-assets.zip
	else
		echo "Found OpenArena assets zip."
	fi
	unzip openarena-assets.zip
	pushd openarena-0.8.8
	rm oa_ded.*
	rm openarena.*
	rm SDL.dll
	rm lib*
else
	echo "Found OpenArena assets."
fi

git submodule update --init --recursive
