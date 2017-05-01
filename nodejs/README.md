# docker-node

Generic node runtime and tools for personnal use.

## usage

```bash
# run a single script
docker run --rm -v $(pwd):/app -w /app pamplemousse/node node <script.js>
```

## user and ownership

When the container generates files, we usually want to be able to manipulate those with our user on the host.

The idea here is to use a user inside the container that will match the `uid` and `gid` on the host.

Default values are set to 1000. This can be changed via an environment variable.

```bash
docker run \
  -e USER_ID=1042 \
  -e GROUP_ID=1042 \
  pamplemousse/node \
  node
```

## packages included

  * http-server
  * json-server
  * js-yaml
  * nsp
  * standard
