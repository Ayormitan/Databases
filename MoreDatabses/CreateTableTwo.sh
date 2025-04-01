#!/bin/bash
mysql -u root -p"Password" -e "
CREATE TABLE IF NOT EXISTS id_not_null (
	id INT DEFAULT 1 PRIMARY KEY,
	name VARCHAR(256)
);" 2>/dev/null
