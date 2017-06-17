# docker-burp

Burp web security tool in a container.


## usage

#### the "standard" way
```bash
docker run \
  --name burp \
  --rm -it \
  -e DISPLAY=$DISPLAY \
  -e XAUTHORITY=$XAUTHORITY \
  -v /run/user/1000/gdm/Xauthority:$XAUTHORITY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  --net host \
  -p 8080:8080 \
  pamplemousse/burp
```


#### proxy other containers

It's also possible to catch inter-containers communications as long as the burp container is connected to the network you want to listen too.

```bash
# let's create a custom network
docker network create --driver=bridge my_network
```
```yaml
# docker-compose.yml
services:
  client:
    # some config
    networks: my_network
  server:
    # some config
    networks: my_network
networks:
  my_network:
      external: true
```
```bash
# then the burp container joins this network
# using the "--net" option
docker run \
  --name burp \
  --rm -it \
  -e DISPLAY=:1 \
  -e XAUTHORITY=/run/user/1000/gdm/Xauthority \
  -v /run/user/1000/gdm/Xauthority:/run/user/1000/gdm/Xauthority \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  --net my_network \
  -p 8080:8080 \
  pamplemousse/burp
```
