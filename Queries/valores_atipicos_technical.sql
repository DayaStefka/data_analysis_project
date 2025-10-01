CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.cleaned_technical_info` AS
SELECT
  REGEXP_REPLACE(track_id, r'[^A-Za-z0-9 ]', '') AS track_id,
  *
EXCEPT(track_id)
FROM `musicdata-470417.datos_musica.cleaned_technical_info`;