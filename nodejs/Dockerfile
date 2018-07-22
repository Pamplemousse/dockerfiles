FROM node:9

RUN apt-get update && apt-get install apt-transport-https

RUN yarn global add \
      doctoc \
      elm@0.18 \
      http-server \
      json-server \
      js-yaml \
      livedown \
      nsp nsp-preprocessor-yarn \
      prettier \
      standard

USER node
