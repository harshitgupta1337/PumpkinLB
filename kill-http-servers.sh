#!/bin/bash

pids=$(ps -aux | grep SimpleHTTPServer | awk '{print $2}')
for pid in $pids
do
	kill $pid
done
