mysql -u root -p'Paasword' -e "
USE metal_bands;
SELECT origin,
	SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin 
ORDER BY nb_fans DESC;"
