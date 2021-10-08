
.PHONY: all init release

all: release

init:
	sh fetch-assets.sh

release: init
	sh build.sh
