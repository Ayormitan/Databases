DELIMITER $$

USE my_aydb

DROP PROCEDURE IF EXISTS AddBonus;

CREATE PROCEDURE AddBonus (
	IN user_id INT,
	IN project_name VARCHAR(500),
	IN score FLOAT
)
BEGIN
	DECLARE project_id INT DEFAULT NULL;
	-- Show the value of user id
	SELECT user_id AS passed_user_id;
	
	-- Check if project already exist
	SELECT id INTO project_id FROM projects WHERE name = project_name LIMIT 1;

	-- If project does not exist insert
	IF project_id IS NULL THEN
		INSERT INTO projects (name) VALUES (project_name);
		SET project_id = LAST_INSERT_ID();
	END IF;

	-- Insert new corrections 
	INSERT INTO corrections (user_id, project_id, score)
	VALUES (user_id, project_id, score);

END $$
DELIMITER ;
