#!/bin/bash
#elasticsearch healthcheck
curl localhost:9200/_cat/health
#redis healthcheck
docker exec -it cognigohomework_redis_1 redis-cli ping
