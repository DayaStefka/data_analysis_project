SELECT
  CORR(in_spotify_playlists, in_deezer_playlists) AS correlacion_spotify_deezer
FROM
  `musicdata-470417.datos_musica.final_cleaned_data_all`;