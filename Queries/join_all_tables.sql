CREATE OR REPLACE VIEW `musicdata-470417.datos_musica.final_cleaned_data_all` AS
SELECT
  s.track_id,
  s.track_name,
  s.artists_name,
  s.artist_count,
  s.released_year,
  s.released_month,
  s.released_day,
  s.in_spotify_playlists,
  s.in_spotify_charts,
  s.streams,
  c.in_apple_playlists,
  c.in_apple_charts,
  c.in_deezer_playlists,
  c.in_deezer_charts,
  c.in_shazam_charts,
  c.participacion_total,
  t.bpm,
  t.key,
  t.mode,
  t.danceability,
  t.valence,
  t.energy,
  t.acousticness,
  t.instrumentalness,
  t.liveness,
  t.speechiness
FROM
  `musicdata-470417.datos_musica.spotify_clean_view` s
LEFT JOIN
  `musicdata-470417.datos_musica.cleaned_competition_view` c
  ON s.track_id = c.track_id
LEFT JOIN
  `musicdata-470417.datos_musica.cleaned_technical_info_view` t
  ON s.track_id = t.track_id;
