CREATE OR REPLACE TABLE `musicdata-470417.datos_musica.cleaned_technical_info` AS
SELECT 
CAST(track_id AS BIGNUMERIC) AS track_id,
bpm, `key`,mode,`danceability_%`,`valence_%`, `energy_%`, `acousticness_%`, `instrumentalness_%`, `liveness_%`, `speechiness_%`
FROM `musicdata-470417.datos_musica.cleaned_technical_info`;