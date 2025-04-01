#!/bin/bash
mysql -u root -p'pASSWORD' -e "
CREATE TABLE IF NOT EXISTs force_name (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(256) NOT NULL
);" 2>/dev/null
