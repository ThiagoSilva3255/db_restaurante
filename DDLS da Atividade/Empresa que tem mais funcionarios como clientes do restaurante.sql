# Qual a empresa que tem mais funcionarios como clientes do restaurante#
SELECT 
    e.nome_empresa,
    COUNT(DISTINCT m.id_cliente) AS num_funcionarios
FROM 
    tb_mesa m
JOIN 
    tb_beneficio b ON m.id_cliente = b.codigo_funcionario
JOIN 
    tb_empresa e ON b.codigo_empresa = e.codigo_empresa
GROUP BY 
    e.nome_empresa
ORDER BY 
    num_funcionarios DESC
LIMIT 8;