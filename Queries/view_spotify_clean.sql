CREATE OR REPLACE VIEW `musicdata-470417.datos_musica.spotify_clean_view` AS
SELECT
  CAST(track_id AS BIGNUMERIC) AS track_id,
  track_name,
  artists_name,
  artist_count,
  released_year,
  released_month,
  released_day,
  in_spotify_playlists,
  in_spotify_charts,
  CAST(COALESCE(streams, 0) AS BIGNUMERIC) AS streams  -- Tratando NULLs como 0
FROM
  `musicdata-470417.datos_musica.spotify_clean`;
