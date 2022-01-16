-- create databases
CREATE DATABASE IF NOT EXISTS `wordpress_alpha`;
CREATE DATABASE IF NOT EXISTS `wordpress_beta`;

-- create users and grant rights
GRANT ALL PRIVILEGES ON wordpress_alpha.* TO 'wordpress_alpha'@'%' IDENTIFIED BY 'wordpress_alpha';
GRANT ALL PRIVILEGES ON wordpress_beta.* TO 'wordpress_beta'@'%' IDENTIFIED BY 'wordpress_beta';
FLUSH PRIVILEGES;