FROM jenserat/selfoss

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
      cron

RUN echo "*/15 *  * * *  root  curl -s http://localhost/update\n" >> /etc/crontab

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
