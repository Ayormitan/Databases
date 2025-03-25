#!/bin/bash
mysql -u root -p"Password" -e "
USE hbtn_0c_0;
SELECT COUNT(*) FROM first_table
WHERE id=1;
" 2>/dev/null
