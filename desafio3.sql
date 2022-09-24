SELECT 
	U.usuario,
	count(H.cancao_id) qt_de_musicas_ouvidas,
    ROUND(SUM(C.duracao_segundos/60),2) total_minutos 
FROM SpotifyClone.historico_de_reproducoes H
	INNER JOIN SpotifyClone.cancao C ON H.cancao_id = C.id
	INNER JOIN SpotifyClone.usuario U ON H.usuario_id = U.id
GROUP BY U.usuario
ORDER BY U.usuario;
