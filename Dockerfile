FROM php:8.2-fpm-alpine3.16

RUN apk --update --no-cache add curl ca-certificates nginx openjdk11 php-pgsql
COPY --from=composer:latest  /usr/bin/composer /usr/bin/composer

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.sh


CMD ["/bin/ash", "/entrypoint.sh"]
