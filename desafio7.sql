SELECT
	A.artista AS artista,
	AL.album AS album,
	COUNT(SA.usuario_id) AS seguidores
FROM SpotifyClone.album AL
	INNER JOIN SpotifyClone.artista A ON AL.artista_id = A.id
	INNER JOIN SpotifyClone.seguindo_artistas SA ON AL.artista_id = SA.artista_id
GROUP BY AL.id
ORDER BY seguidores desc, artista;