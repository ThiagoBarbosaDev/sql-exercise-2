SELECT 
  C.cancao AS nome,
  COUNT(HR.cancao_id) AS reproducoes
FROM SpotifyClone.cancao C
INNER JOIN SpotifyClone.historico_de_reproducoes HR ON C.id = HR.cancao_id
INNER JOIN SpotifyClone.usuario U ON U.id = HR.usuario_id
INNER JOIN SpotifyClone.plano P ON P.id = U.plano_id
WHERE P.plano = 'gratuito' OR P.plano = 'pessoal'
GROUP BY HR.cancao_id
ORDER BY C.cancao;