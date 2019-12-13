FROM debian:buster

RUN apt update &&
    apt install -y nginx &&
    service nginx start

RUN apt update &&
    apt install -y mariadb-server mariadb-client &&
    service mysql start &&
    mysql_secure_installation

RUN apt update &&
    apt install -y php-fpm php-mysql &&
    apt install -y php-json php-mbstring

RUN apt update &&
    apt install -y php-{mbstring,zip,gd,xml,pear,gettext,cgi} &&
    wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz &&
    mkdir /var/www/html/phpmyadmin &&
    tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin &&
    rm -rf phpMyAdmin-4.9.0.1-english.tar.gz &&
    cp /var/www/html/phpmyadmin/config{.sample,}.inc.php &&
    sed -i "/YOU MUST FILL IN THIS FOR COOKIE AUTH/c\$cfg[\'blowfish_secret\'] = \'$2a$07$EJooQ7FWQIpYWJAMqd0mq.eRnrTTAkqpIwEv1InrJ8q0KMfAK0WLi\';" /var/www/html/phpmyadmin/config.inc.php &&
    chmod 660 /var/www/html/phpmyadmin/config.inc.php &&
    chown -R www-data:www-data /var/www/html/phpmyadmin &&
    service nginx restart

RUN apt update &&
    apt install -y wordpress