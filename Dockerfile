FROM debian:buster
MAINTAINER Maxence VILEO "mavileo@student.42.fr"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y curl && \
    apt-get install -y wget

RUN apt-get update && \
    apt-get install -y nginx && \
    service nginx start

RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client && \
    service mysql start
    #mysql_secure_installation
