#!/bin/bash

/usr/bin/iperf3 --client 200.85.182.166 -p 61193 --format m --get-server-output --time 15 | tail -n4 | grep receiver | awk '{print $7}'

