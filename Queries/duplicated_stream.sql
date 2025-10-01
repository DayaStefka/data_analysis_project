CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.spotify_clean` AS
WITH ranked_tracks AS (
  SELECT *,
    ROW_NUMBER() OVER (
      PARTITION BY track_name, artists_name
      ORDER BY streams DESC
    ) AS rn
  FROM `musicdata-470417.datos_musica.spotify`
)
SELECT * EXCEPT(rn)
FROM ranked_tracks
WHERE rn = 1;

