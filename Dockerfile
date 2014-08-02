FROM polinux/centos7:latest
MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>

RUN yum update -y && \
yum install -y --nogpgcheck tar wget mariadb java-1.7.0-openjdk mariadb-server && \
mkdir /data
# Remove pre-installed database
RUN rm -rf /var/lib/mysql/*
# Create new Mysql DB setup
RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql/

ADD install /data/install/
RUN cd /data/install &&\
./mysql.sh

ADD supervisord.conf /etc/supervisord.d/confluence .conf
EXPOSE 7990