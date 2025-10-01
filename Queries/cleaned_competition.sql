-- Esta consulta crea una nueva tabla llamada cleaned_competition.
-- Reemplaza los valores nulos en la columna in_shazam_charts con el valor 2 (mediana calculada).
-- También elimina cualquier fila que no tenga track_id, para asegurar que todos los registros sean válidos.

CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.cleaned_competition` AS
SELECT
  track_id,
  in_apple_playlists,
  in_apple_charts,
  in_deezer_playlists,
  in_deezer_charts,
  IFNULL(in_shazam_charts, 2) AS in_shazam_charts  -- ← usa la mediana real aquí
FROM `musicdata-470417.datos_musica.competition`
WHERE track_id IS NOT NULL;
