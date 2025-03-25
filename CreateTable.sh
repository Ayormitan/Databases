#!/bin/bash
mysql -u root -p"Password" -e "USE hbtn_0c_0; CREATE TABLE IF NOT EXISTS first_table (
	id INT,
	name VARCHAR(256) NOT NULL
);" 2>/dev/null
