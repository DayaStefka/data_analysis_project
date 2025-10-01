SELECT
  COUNTIF(track_id IS NULL) AS null_track_id,
  COUNTIF(bpm IS NULL) AS null_bpm,
  COUNTIF(`key` IS NULL) AS null_key,
  COUNTIF(mode IS NULL) AS null_mode,
  COUNTIF(`danceability_%` IS NULL) AS null_danceability,
  COUNTIF(`valence_%` IS NULL) AS null_valence,
  COUNTIF(`energy_%` IS NULL) AS null_energy,
  COUNTIF(`acousticness_%` IS NULL) AS null_acousticness,
  COUNTIF(`instrumentalness_%` IS NULL) AS null_instrumentalness,
  COUNTIF(`liveness_%` IS NULL) AS null_liveness,
  COUNTIF(`speechiness_%` IS NULL) AS null_speechiness
FROM `musicdata-470417.datos_musica.technical_info`;