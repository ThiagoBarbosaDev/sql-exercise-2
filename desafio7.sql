SELECT 
  A.artista,
  AL.album,
  COUNT(AL.Album) AS seguidores
FROM SpotifyClone.album as AL
INNER JOIN SpotifyClone.artista A ON AL.artista_id = A.id
INNER JOIN SpotifyClone.seguindo_artistas SA ON SA.artista_id = AL.artista_id
GROUP BY album
ORDER BY 
	seguidores desc, 
  artista,
  album;