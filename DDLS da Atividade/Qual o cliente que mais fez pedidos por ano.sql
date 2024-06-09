SELECT ano, nome_cliente, num_pedidos
FROM (
    SELECT 
        YEAR(ms.data_hora_entrada) AS ano, 
        cl.nome_cliente, 
        COUNT(*) AS num_pedidos,
        ROW_NUMBER() OVER (PARTITION BY YEAR(ms.data_hora_entrada) ORDER BY COUNT(*) DESC) AS rn
    FROM tb_pedido pd
    LEFT JOIN tb_mesa ms ON pd.codigo_mesa = ms.codigo_mesa
    LEFT JOIN tb_cliente cl ON ms.id_cliente = cl.id_cliente
    GROUP BY YEAR(ms.data_hora_entrada), cl.nome_cliente
) AS subquery
WHERE rn = 1
ORDER BY ano;
