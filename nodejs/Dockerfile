FROM node:6

RUN apt-get update && apt-get install apt-transport-https

RUN npm install -g \
      http-server \
      json-server \
      js-yaml \
      nsp \
      nsp-preprocessor-yarn \
      standard \
      doctoc

USER node
