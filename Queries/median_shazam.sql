SELECT
  APPROX_QUANTILES(in_shazam_charts, 100)[OFFSET(50)] AS median_shazam
FROM `musicdata-470417.datos_musica.competition`
WHERE in_shazam_charts IS NOT NULL;
