FROM php:7.2-apache

# Remove SUID programs
RUN for i in `find / -perm 6000 -type f 2>/dev/null`; do chmod a-s $i; done

# Set frontend mode as noninteractive (default answers to all questions)
ENV DEBIAN_FRONTEND noninteractive

# selfoss requirements: mod-headers, mod-rewrite, gd
RUN a2enmod headers rewrite \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
        unzip \
        libjpeg62-turbo-dev \
        libpng-dev \
        libpq-dev \
        cron \
 && rm -rf /var/lib/apt/lists/* \
 && docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ \
 && docker-php-ext-install gd mbstring pdo_pgsql pdo_mysql

ADD https://github.com/SSilence/selfoss/releases/download/2.18/selfoss-2.18.zip /tmp/
RUN unzip /tmp/selfoss-*.zip -d /var/www/html && \
    rm /tmp/selfoss-*.zip && \
    ln -s /var/www/html/data/config.ini /var/www/html && \
    chown -R www-data:www-data /var/www/html

# Extend maximum execution time, so /refresh does not time out
COPY php.ini /usr/local/etc/php/

VOLUME /var/www/html/data

RUN echo "*/15 *  * * *  root  curl -s http://localhost/update\n" >> /etc/crontab

ENTRYPOINT /bin/bash -c "cron && apache2-foreground"
