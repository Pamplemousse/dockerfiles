FROM node:6

# TODO: remove once https://github.com/docker-library/buildpack-deps/issues/55 is resolved
RUN apt-get update && apt-get install apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn

RUN npm install -g \
      http-server \
      json-server \
      js-yaml \
      nsp \
      standard

USER node

# RUN curl -o- -L https://yarnpkg.com/install.sh | bash

