mysql -u root -p'Password' -e "
USE names
CREATE INDEX idx_name_first
ON names (SUBSTRING(name, 1, 1));"

