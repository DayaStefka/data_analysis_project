WITH 
-- Tabla auxiliar: Contiene los datos necesarios de la tabla unida para futuras consultas
tabla_auxiliar AS (
  SELECT
    track_id,
    artists_name,
    artist_count
  FROM
    `musicdata-470417.datos_musica.final_cleaned_data_all`
),
-- Tabla principal: Calcula el total de canciones por artista solista
artistas_solistas AS (
  SELECT
    artists_name,
    COUNT(track_id) AS total_canciones
  FROM
    tabla_auxiliar
  WHERE
    artist_count = 1 -- Solo artistas solistas (con un solo artista por canción)
  GROUP BY
    artists_name
)
-- Resultado final: Mostrar total de canciones por artista solista
SELECT
  artists_name,
  total_canciones
FROM
  artistas_solistas
ORDER BY
  total_canciones DESC;
