SELECT nome_cliente, SUM(total_gasto) AS total_gasto
FROM (
    SELECT 
        cl.nome_cliente, 
        SUM(pd.quantidade_pedido * p.preco_unitario_prato) AS total_gasto
    FROM tb_pedido pd
    LEFT JOIN tb_prato p ON pd.codigo_prato = p.codigo_prato
    LEFT JOIN tb_mesa ms ON pd.codigo_mesa = ms.codigo_mesa
    LEFT JOIN tb_cliente cl ON ms.id_cliente = cl.id_cliente
    GROUP BY cl.nome_cliente
) AS subquery
GROUP BY nome_cliente
ORDER BY total_gasto DESC
LIMIT 1;
