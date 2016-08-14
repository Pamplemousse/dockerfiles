# docker-selfoss

Containerized version of selfoss.

Enhancing [JensErat](https://github.com/JensErat/docker-selfoss)'s by running the cron inside the container.

## usage

```bash
# create a data volume
docker volume create --name data-volume

# start a selfoss instance
docker run \
  -v data-volume:/var/www/html/data \
  -p 8000:80 \
  pamplemousse/selfoss
```
