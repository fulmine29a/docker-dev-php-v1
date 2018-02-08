FROM debian:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt install memcached -y
RUN apt-get clean
RUN addgroup --gid 1000 dev
RUN adduser --uid 1000 --gid 1000 dev
EXPOSE 11211
CMD service memcached start && bash