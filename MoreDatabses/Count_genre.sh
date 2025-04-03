#!/bin/bash
mysql -u root -p'Password' -e "
USE hbtn_0d_tvshows
SELECT tv_genres.name AS genre,
COUNT(tv_show_genres.show_id) AS show_number
FROM tv_genres
LEFT JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
GROUP BY tv_genres.name
ORDER BY show_number ASC;" 2>/dev/null
