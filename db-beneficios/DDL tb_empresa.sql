CREATE TABLE `tb_empresa` (
  `codigo_empresa` int NOT NULL,
  `nome_empresa` varchar(500) NOT NULL,
  `uf_sede_empresa` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci