SELECT
  COUNTIF(track_id IS NULL) AS null_track_id,
  COUNTIF(in_apple_playlists IS NULL) AS null_in_apple_playlists,
  COUNTIF(in_apple_charts IS NULL) AS null_in_apple_charts,
  COUNTIF(in_deezer_playlists IS NULL) AS null_in_deezer_playlists,
  COUNTIF(in_deezer_charts IS NULL) AS null_in_deezer_charts,
  COUNTIF(in_shazam_charts IS NULL) AS null_in_shazam_charts
FROM `musicdata-470417.datos_musica.competition`;