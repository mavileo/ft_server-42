FROM debian:buster

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y apt-utils curl wget gpg && \
    apt-get install -y mariadb-server && \
    mkdir /srcs

ADD srcs/ /srcs/

RUN service mysql start && \
    mysql < /srcs/wpdb.sql && \
    wget https://nginx.org/keys/nginx_signing.key && \
    apt-key add nginx_signing.key && \
    cp /srcs/sources.list /etc/apt/sources.list && \
    apt-get install -y nginx-full && \
    service nginx start

RUN apt-get update && \
    apt-get install -y ca-certificates apt-transport-https && \
    wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add - && \
    echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list && \
    apt-get update && \
    apt-get install -y php7.3-cli php7.3-common php7.3-dev php7.3-fpm php7.3-gd php7.3-geoip php7.3-gmp php7.3-igbinary php7.3-json php7.3-mbstring php7.3-memcached php7.3-msgpack php7.3-mysql php7.3-opcache php7.3-readline php7.3-soap php7.3-tidy php7.3-xml php7.3-xsl php7.3-zip && \
    cp /srcs/default /etc/nginx/sites-enabled/default && \
    service php7.3-fpm start

RUN cd /var/www/html && \
    wget https://wordpress.org/latest.tar.gz && \
    tar --strip-components=1 -xvf latest.tar.gz && \
    rm latest.tar.gz && \
    chown www-data:www-data -R * && \
    mv wp-config-sample.php wp-config.php && \
    cp /srcs/wp-config.php /var/www/html/wp-config.php && \
    service php7.3-fpm start && \
    service nginx start