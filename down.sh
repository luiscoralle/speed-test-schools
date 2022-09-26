#!/bin/bash

/usr/bin/iperf3 --client 200.85.182.166 -p 61193 --format m --get-server-output --time 15 --reverse | tail -n4 | grep sender | awk '{print $7}'
