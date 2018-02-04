#/bin/sh

sudo -u dev mysqld
mysql < /root/init.sql
