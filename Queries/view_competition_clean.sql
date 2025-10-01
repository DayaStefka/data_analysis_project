CREATE OR REPLACE VIEW `musicdata-470417.datos_musica.cleaned_competition_view` AS
SELECT
  track_id,
  COALESCE(in_apple_charts, 0) AS in_apple_charts,
  COALESCE(in_apple_playlists, 0) AS in_apple_playlists,
  COALESCE(in_deezer_charts, 0) AS in_deezer_charts,
  COALESCE(in_deezer_playlists, 0) AS in_deezer_playlists,
  COALESCE(in_shazam_charts, 0) AS in_shazam_charts,
  COALESCE(participacion_total, 0) AS participacion_total
FROM
  `musicdata-470417.datos_musica.cleaned_competition`;
