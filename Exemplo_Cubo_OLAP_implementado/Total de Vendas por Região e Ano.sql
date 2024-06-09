SELECT l.regiao, t.ano, SUM(f.valor) AS total_vendas
FROM fato_vendas f
JOIN dim_localizacao l ON f.id_localizacao = l.id_localizacao
JOIN dim_tempo t ON f.id_tempo = t.id_tempo
GROUP BY l.regiao, t.ano
ORDER BY l.regiao, t.ano;
