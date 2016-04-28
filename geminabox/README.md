# docker-geminabox

Dockerfile describing a minimalist image to run [https://github.com/geminabox/geminabox](geminabox).

## Setup

  * webapp available over http, image exposing port 9292
  * set credentials for http basic auth when starting container using ```USERNAME``` and ```PASSWORD``` environment variables

## Usage

```
docker run  \
  --name gemserver_container \
  -e USERNAME='user' \
  -e PASSWORD='password' \
  -p 9292:9292 \
  -d pamplemousse/geminabox
```

Gemserver webapp is available at [localhost:9292](http://localhost:9292).
