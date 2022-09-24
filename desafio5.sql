SELECT 
	C.cancao,
    COUNT(H.cancao_id) as reproducoes 
FROM SpotifyClone.historico_de_reproducoes as H
	INNER JOIN SpotifyClone.cancao C ON C.id = H.cancao_id
GROUP BY H.cancao_id
ORDER BY reproducoes desc, C.cancao asc
LIMIT 2;