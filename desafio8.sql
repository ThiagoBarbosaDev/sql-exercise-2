SELECT
	AR.artista as artista,
    AL.album as album
FROM SpotifyClone.album as AL
INNER JOIN SpotifyClone.artista as AR ON AL.artista_id = AR.id
WHERE artista = 'Elis Regina';