CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.spotify_clean` AS
SELECT
  REGEXP_REPLACE(track_id, r'[^A-Za-z0-9 ]', '') AS track_id,
  REGEXP_REPLACE(track_name, r'[^A-Za-z0-9 ]', '') AS track_name,
  REGEXP_REPLACE(artists_name, r'[^A-Za-z0-9 ]', '') AS artists_name,
  CASE WHEN streams LIKE 'BPM%' THEN '0' ELSE streams END AS streams,
  *
EXCEPT(track_id, track_name, artists_name, streams)
FROM `musicdata-470417.datos_musica.spotify_clean`;
