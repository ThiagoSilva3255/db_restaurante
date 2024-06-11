SELECT 
    nome_empresa,
    ano,
    num_funcionarios_sobremesas
FROM (
    SELECT 
        e.nome_empresa,
        YEAR(m.data_hora_saida) AS ano,
        COUNT(DISTINCT b.codigo_funcionario) AS num_funcionarios_sobremesas,
        RANK() OVER (PARTITION BY YEAR(m.data_hora_saida) ORDER BY COUNT(DISTINCT b.codigo_funcionario) DESC) AS ranking
    FROM 
        tb_mesa m
    JOIN 
        tb_beneficio b ON m.id_cliente = b.codigo_funcionario
    JOIN 
        tb_empresa e ON b.codigo_empresa = e.codigo_empresa
    JOIN 
        tb_pedido p ON m.codigo_mesa = p.codigo_mesa
    JOIN 
        tb_tipo_prato t ON codigo_tipo_prato = t.codigo_tipo_prato
    WHERE 
        t.codigo_tipo_prato = 3
    GROUP BY 
        e.nome_empresa, ano
) AS ranked
WHERE 
    ranking = 1
ORDER BY 
    ano DESC;
