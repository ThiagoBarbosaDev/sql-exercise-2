SELECT 
  COUNT(id) cancoes,
  COUNT(DISTINCT artista_id) artistas,
  COUNT(DISTINCT album_id) albuns 
FROM SpotifyClone.cancao;