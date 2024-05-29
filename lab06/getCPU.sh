#!/bin/bash/
while : ; do
    idle=$(top -bn1 | grep Cpu | awk -F'[, ]+' '{print $8}')
    usage=$(echo "100-$idle" | bc)
    echo "$usage %" > /usr/share/nginx/l4/cpu/out
    sleep 0.5
done