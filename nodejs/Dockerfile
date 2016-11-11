FROM node:4.6

RUN npm install -g \
      http-server \
      js-yaml \
      nsp \
      standard

RUN mkdir /entrypoint
COPY entrypoint.sh /entrypoint/entrypoint.sh
ENTRYPOINT ["/entrypoint/entrypoint.sh"]
