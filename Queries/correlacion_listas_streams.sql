SELECT
  CORR(
    (in_spotify_playlists + in_apple_playlists + in_deezer_playlists), 
    streams
  ) AS correlacion_listas_streams
FROM
  `musicdata-470417.datos_musica.final_cleaned_data_all`;
