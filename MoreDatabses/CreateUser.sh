#!/bin/bash
mysql -u root -p'Password' -e "CREATE DATABASE IF NOT EXISTS hbtn_0d_2;
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'febilamide';
GRANT SELECT ON hbtn_0d_2 TO 'user_0d_2'@'localhost';
FLUSH PRIVILEGES;" 2>/dev/null
