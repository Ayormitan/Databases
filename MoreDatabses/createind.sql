mysql -u root -p'Password' -e "
USE names;
CREATE INDEX idx_name_first_score 
ON names (name, score);
"
