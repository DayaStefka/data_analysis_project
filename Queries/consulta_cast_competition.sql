CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.cleaned_competition` AS
SELECT 
CAST(track_id AS BIGNUMERIC) AS track_id,
in_apple_charts, in_apple_playlists,in_deezer_charts,in_deezer_playlists,in_shazam_charts,
FROM `musicdata-470417.datos_musica.cleaned_competition`;