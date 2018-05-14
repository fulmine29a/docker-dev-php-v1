FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install php5-fpm php5-xdebug php5-mysql php5-gd freetype* php5-memcache -y
RUN apt-get clean
RUN addgroup --gid 1000 dev
RUN adduser --uid 1000 --gid 1000 dev
EXPOSE 9000
#RUN rm -rf /etc/php5
ADD ./etc/php5/ /etc/php5/
CMD echo $NGINX_IP $SITE_NAME >> /etc/hosts && service php5-fpm start && bash