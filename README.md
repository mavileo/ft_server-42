# ft_server

This project consists in creating a Docker image containing an Nginx server redirecting to a Wordpress site on the base url, this site being linked to a MySQL database. This MySQL database can be managed from PhpMyAdmin on the url / phpmyadmin.\
Use the `docker build .` command to built the image, and `docker run -p 80:80 -p 443:443 image` to built the image previously build.
