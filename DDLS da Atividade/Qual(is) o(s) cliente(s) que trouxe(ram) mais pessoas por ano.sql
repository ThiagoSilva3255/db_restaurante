# Qual(is) o(s) cliente(s) que trouxe(ram) mais pessoas por ano#
SELECT 
    c.nome_cliente,
    m.id_cliente,
    YEAR(m.data_hora_entrada) AS ano,
    COUNT(*) AS num_pessoas
FROM 
    tb_mesa m
JOIN 
    tb_cliente c ON m.id_cliente = c.id_cliente
GROUP BY 
    m.id_cliente, ano
ORDER BY 
    ano DESC, num_pessoas DESC
LIMIT 1;