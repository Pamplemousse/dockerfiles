# Debug

A docker image with basic Linux tools and utilities;
Used to troubleshoot and debug by "attaching" to fellow faulty containers.

```
export container=<name of the container to debug>
docker run --rm -it \
  --pid=container:$container \
  --net=container:$container \
  pamplemousse/debug
```
