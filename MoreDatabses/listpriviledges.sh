#!/bin/bash

MYSQL_CMD="mysql -u root -p'mysqlPassword' -e"

echo "Privileges for user_0d_1:"
$MYSQL_CMD "SHOW GRANTS FOR 'user_0d_1'@'localhost';"

echo "Privileges for user_0d_2:"
$MYSQL_CMD "SHOW GRANTS FOR 'user_0d_2'@'localhost';" 2>/dev/null
