#!/bin/bash
mysql -u root -p"Password" -e "
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0'
AND TABLE_NAME = 'first_table';
" 2>/dev/null
