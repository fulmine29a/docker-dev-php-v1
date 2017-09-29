FROM debian:latest

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean
RUN rm -rf /etc/nginx/*
ADD etc/nginx/ /etc/nginx/
EXPOSE 80
CMD service nginx start && bash