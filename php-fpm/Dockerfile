FROM debian:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install php-fpm php-xdebug -y
RUN apt-get clean
RUN addgroup --gid 1000 dev
RUN adduser --uid 1000 --gid 1000 dev
EXPOSE 9000
RUN rm -rf /etc/php/7.0/*
ADD ./etc/php/ /etc/php/7.0
CMD service php7.0-fpm start && bash