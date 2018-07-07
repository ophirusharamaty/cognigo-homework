#!/bin/bash
FILE=~/cognigo-homework/stats.txt
TIME=$(date +%d-%b-%H_%M)
TIME_LINE="TIME: $TIME"
echo $TIME_LINE >> "$FILE"
docker stats --no-stream >> "$FILE"
