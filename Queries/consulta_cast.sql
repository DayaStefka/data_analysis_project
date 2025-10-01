CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.spotify_clean` AS
SELECT 
  CAST(track_id AS BIGNUMERIC) AS track_id,
  CAST(participacion_total AS BIGNUMERIC) AS participacion_total,
  track_name,
  artists_name,
  artist_count,
  released_year,
  released_month,
  released_day,
  in_spotify_playlists,
  in_spotify_charts,
  CAST(streams AS BIGNUMERIC) AS streams
FROM 
  `musicdata-470417.datos_musica.spotify_clean`;