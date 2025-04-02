#!/bin/bash
mysql -u root -p'Password' -e "
CREATE DATABASE IF NOT EXISTS hbtn_0d_USA;" 2>/dev/null

mysql -u root -p'Password' -D hbtn_0d_USA -e "CREATE TABLE IF NOT EXISTS States (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(256) not null
);" 2>/dev/null
