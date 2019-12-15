create database wpdb;
create user wp_user@localhost;
SET PASSWORD FOR 'wp_user'@localhost= PASSWORD('wppass');
GRANT ALL PRIVILEGES ON wpdb.* TO wp_user@localhost IDENTIFIED BY 'wppass';