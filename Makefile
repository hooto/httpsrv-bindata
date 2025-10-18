# Copyright 2016 Eryx <evorui аt gmаil dοt cοm>, All rights reserved.
#

BINDATA_CMD = httpsrv-bindata

.PHONY: build_main install

all: build_main
	@echo ""
	@echo "build complete"
	@echo ""

build_main:
	go build -trimpath -ldflags="-s -w" -o ${BINDATA_CMD} main.go

install: build_main
	install ${BINDATA_CMD} ${GOPATH}/bin/${BINDATA_CMD}

clean:
	@echo ""
	@echo "clean complete"
	@echo ""
	rm -f ${BINDATA_CMD}

