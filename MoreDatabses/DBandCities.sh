#!/bin/bash
mysql -u root -p"Password" -e "
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa" 2>/dev/null

mysql -u root -p"Password" -D hbtn_0d_usa -e "
CREATE TABLE IF NOT EXISTS cities (
	id INT AUTO_INCREMENT PRIMARY KEY,
	state_id INT NOT NULL,
	name VARCHAR(256) NOT NULL,
	FOREIGN KEY (state_id) REFERENCES states(id)
);" 2>/dev/null
