SELECT p.nome_produto, t.mes, SUM(f.valor) AS total_vendas
FROM fato_vendas f
JOIN dim_produto p ON f.id_produto = p.id_produto
JOIN dim_tempo t ON f.id_tempo = t.id_tempo
GROUP BY p.nome_produto, t.mes
ORDER BY p.nome_produto, t.mes;
