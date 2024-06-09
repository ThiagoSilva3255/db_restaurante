-- Inserindo dados em dim_tempo
INSERT INTO dim_tempo (id_tempo, data, mes, trimestre, ano) VALUES
(1, '2023-01-01', 1, 1, 2023),
(2, '2023-02-01', 2, 1, 2023),
(3, '2023-03-01', 3, 1, 2023);

-- Inserindo dados em dim_produto
INSERT INTO dim_produto (id_produto, nome_produto, categoria_produto) VALUES
(1, 'Produto A', 'Categoria 1'),
(2, 'Produto B', 'Categoria 2'),
(3, 'Produto C', 'Categoria 1');

-- Inserindo dados em dim_localizacao
INSERT INTO dim_localizacao (id_localizacao, cidade, estado, regiao) VALUES
(1, 'Cidade X', 'Estado Y', 'Região 1'),
(2, 'Cidade Z', 'Estado W', 'Região 2');

-- Inserindo dados em fato_vendas
INSERT INTO fato_vendas (id_venda, id_tempo, id_produto, id_localizacao, quantidade, valor) VALUES
(1, 1, 1, 1, 10, 100.00),
(2, 2, 2, 1, 5, 50.00),
(3, 3, 3, 2, 8, 80.00);
