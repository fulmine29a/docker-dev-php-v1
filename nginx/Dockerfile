FROM debian:latest

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean
RUN addgroup --gid 1000 nginx
RUN adduser --uid 1000 --gid 1000 nginx
EXPOSE 80
RUN rm -rf /etc/nginx/*
ADD etc/nginx/ /etc/nginx/
CMD service nginx start && bash