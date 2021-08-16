#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

$SCRIPT_DIR/kill-http-servers.sh

cd $SCRIPT_DIR

cd dir1
	python -m SimpleHTTPServer 8001 > /dev/null 2>&1 &
cd -

cd dir2
	python -m SimpleHTTPServer 8002 > /dev/null 2>&1 &
cd -

python3 PumpkinLB.py local.cfg

