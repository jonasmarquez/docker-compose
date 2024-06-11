-- init.sql
CREATE DATABASE mysql_dev;
CREATE DATABASE mysql_pre;
CREATE DATABASE mysql_pro;

CREATE USER 'userperiod'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON example_db.* TO 'userperiod'@'%';

CREATE USER 'userschedule'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON example_db.* TO 'userschedule'@'%';