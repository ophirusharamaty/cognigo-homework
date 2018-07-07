#!/bin/bash
SCHEDULE_MONITORING_HOURS="0 10,14,22"
docker-compose up -d
crontab -l > mycron
echo "$SCHEDULE_MONITORING_HOURS * * * /bin/bash stats.sh" >> mycron
crontab mycron
rm mycron
