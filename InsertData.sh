#!/bin/bash
mysql -u root -p"Password" -e "
USE hbtn_0c_0;
INSERT INTO first_table (id, name)
VALUES (1, 'Ayo'), (2, 'Mitan');
" 2>/dev/null
