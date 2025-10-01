SELECT `key`, COUNT(*) AS frecuencia
FROM `musicdata-470417.datos_musica.technical_info`
WHERE `key` IS NOT NULL
GROUP BY `key`
ORDER BY frecuencia DESC
LIMIT 1;
