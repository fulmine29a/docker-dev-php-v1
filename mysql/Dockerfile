FROM debian:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install mysql-server -y
RUN apt-get install sudo
RUN apt-get clean
RUN addgroup --gid 1000 dev
RUN adduser --uid 1000 --gid 1000 dev
EXPOSE 3306
ADD etc/mysql/my.cnf /etc/mysql/my.cnf
ADD mysql/init.sql /root/init.sql
#ADD mysql/init.sh /root/init.sh
#RUN chmod +x /root/init.sh && /root/init.sh
CMD service mysql start && bash
#CMD bash