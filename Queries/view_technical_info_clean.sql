CREATE OR REPLACE VIEW `musicdata-470417.datos_musica.cleaned_technical_info_view` AS
SELECT
  track_id,
  COALESCE(bpm, 0) AS bpm,
  `key`,
  mode,
  COALESCE(`danceability_%`, 0) AS danceability,
  COALESCE(`valence_%`, 0) AS valence,
  COALESCE(`energy_%`, 0) AS energy,
  COALESCE(`acousticness_%`, 0) AS acousticness,
  COALESCE(`instrumentalness_%`, 0) AS instrumentalness,
  COALESCE(`liveness_%`, 0) AS liveness,
  COALESCE(`speechiness_%`, 0) AS speechiness
FROM
  `musicdata-470417.datos_musica.cleaned_technical_info`;
