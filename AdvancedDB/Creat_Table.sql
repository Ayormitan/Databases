mysql -u root -p'Paasword' -e "
USE my_aydb;
CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL,
	name VARCHAR(255),
	PRIMARY KEY (id)
);" 2>/dev/null
