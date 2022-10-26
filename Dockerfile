FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates nginx
RUN apk add --update --no-cache openjdk11
COPY --from=composer:latest  /usr/bin/composer /usr/bin/composer

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container
RUN curl https://github.com/TheRedSRT4/JVLIA_TTV_ATTENDANCE/releases/download/latest/core.jar
RUN curl https://github.com/TheRedSRT4/JVLIA_TTV_ATTENDANCE/releases/download/latest/stats.jar
COPY ./entrypoint.sh /entrypoint.sh


CMD ["/bin/ash", "/entrypoint.sh"]
