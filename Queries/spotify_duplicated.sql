WITH duplicados AS (
  SELECT 
    track_name,
    artists_name,
    COUNT(*) AS cantidad
  FROM 
    `musicdata-470417.datos_musica.spotify`
  GROUP BY 
    track_name, artists_name
  HAVING 
    COUNT(*) > 1
)

SELECT *
FROM 
  `musicdata-470417.datos_musica.spotify` s
JOIN 
  duplicados d
ON 
  s.track_name = d.track_name AND s.artists_name = d.artists_name
ORDER BY 
  s.track_name, s.artists_name
