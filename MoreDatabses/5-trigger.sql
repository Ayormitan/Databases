USE my_aydb;

DELIMITER $$
DROP TRIGGER IF EXISTS reset_valid_email_on_change;

CREATE TRIGGER reset_valid_email_on_change

BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		SET NEW.valid_email = 0;
	END IF;
END $$

DELIMITER ;
