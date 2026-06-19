#!/bin/bash
xray run -config /etc/xray/config.json &
echo "Xray started with PID $!"
tail -f /dev/null
