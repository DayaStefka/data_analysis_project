CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.spotify_clean` AS
SELECT
  track_id,
  track_name,
  artists_name,
  artist_count,
  released_year,
  released_month,
  released_day,
  in_spotify_playlists,
  in_spotify_charts,
  CAST(streams AS BIGNUMERIC) AS streams,
  DATE(released_year, released_month, released_day) AS fecha_lanzamiento,
  SUM(streams) OVER (PARTITION BY track_id) AS participacion_total
FROM
  `musicdata-470417.datos_musica.spotify_clean`
ORDER BY
  fecha_lanzamiento DESC;
