FROM debian:latest

RUN apt-get update
RUN apt-get install dnsmasq -y

EXPOSE 53
CMD echo 'nameserver 8.8.8.8' >> /etc/resolv.conf && dnsmasq -d -a 192.168.10.2 --address=/dev.ru/172.18.0.4
