-- Criação da database
CREATE DATABASE db_olap;
use db_olap;
-- Tabela de dimensões de tempo --
CREATE TABLE dim_tempo (
    id_tempo INT PRIMARY KEY,
    data DATE,
    mes INT,
    trimestre INT,
    ano INT
);

-- Tabela de dimensões de produto --
CREATE TABLE dim_produto (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria_produto VARCHAR(100)
);

-- Tabela de dimensões de localização --
CREATE TABLE dim_localizacao (
    id_localizacao INT PRIMARY KEY,
    cidade VARCHAR(100),
    estado VARCHAR(100),
    regiao VARCHAR(100)
);
-- Tabela de fatos
CREATE TABLE fato_vendas (
    id_venda INT PRIMARY KEY,
    id_tempo INT,
    id_produto INT,
    id_localizacao INT,
    quantidade INT,
    valor DECIMAL(10, 2),
    FOREIGN KEY (id_tempo) REFERENCES dim_tempo(id_tempo),
    FOREIGN KEY (id_produto) REFERENCES dim_produto(id_produto),
    FOREIGN KEY (id_localizacao) REFERENCES dim_localizacao(id_localizacao)
);
