SELECT
  COUNTIF(track_id IS NULL) AS null_track_id,
  COUNTIF(track_name IS NULL) AS null_track_name,
  COUNTIF(artists_name IS NULL) AS null_artists_name,
  COUNTIF(artist_count IS NULL) AS null_artist_count,
  COUNTIF(released_day IS NULL) AS null_released_day,
  COUNTIF(released_month IS NULL) AS null_released_month,
  COUNTIF(released_year IS NULL) AS null_released_year,
  COUNTIF(in_spotify_charts IS NULL) AS null_in_spotify_charts,
  COUNTIF(in_spotify_playlists IS NULL) AS null_in_spotify_playlists,
  COUNTIF(streams IS NULL) AS null_streams
FROM `musicdata-470417.datos_musica.spotify`;