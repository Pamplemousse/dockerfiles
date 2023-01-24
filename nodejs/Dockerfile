FROM node:18

RUN apt-get update && apt-get install apt-transport-https -y

RUN yarn global add \
      doctoc \
      elm@0.19 \
      heroku \
      http-server \
      jsdoc \
      json-server \
      js-yaml \
      livedown \
      markdown-pdf \
      prettier \
      standard

USER node

RUN rm -rf ~/.elm
