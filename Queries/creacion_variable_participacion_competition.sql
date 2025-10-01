CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.cleaned_competition` AS
SELECT
  track_id,
  in_apple_charts,
  in_apple_playlists,
  in_deezer_charts,
  in_deezer_playlists,
  in_shazam_charts,
  -- Calcular la participación total sumando las columnas
  (in_apple_charts + in_apple_playlists + in_deezer_charts + in_deezer_playlists + in_shazam_charts) AS participacion_total
FROM
  `musicdata-470417.datos_musica.cleaned_competition`
ORDER BY
  track_id;
