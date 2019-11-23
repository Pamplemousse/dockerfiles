# docker-selfoss

Containerized version of selfoss.

Based and enhanced Docker image of [JensErat](https://github.com/JensErat/docker-selfoss)'s. Main changes :
 - [x] `cron` update integrated into the container
 - [x] `apt` lists removed for lighter Docker image

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
