DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
SELECT name, score
FROM students
WHERE score < 80;
