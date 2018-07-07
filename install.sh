#!/bin/bash
SCHEDULE_MONITORING_HOURS="0 10,14,22"
docker-compose up -d
crontab -l > mycron
echo "* * * * * /bin/bash ~/cognigo-homework/stats.sh >> /tmp/cron_output" >> mycron
crontab mycron
rm mycron
