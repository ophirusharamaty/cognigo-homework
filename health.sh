#!/bin/bash
#elasticsearch healthcheck
#curl localhost:9200/_cat/health
#redis healthcheck use info for monitoring()
#docker exec -it cognigohomework_redis_1 redis-cli ping


#using tests in docker
docker inspect --format='{{json .State.Health}}' $(docker ps -q)
