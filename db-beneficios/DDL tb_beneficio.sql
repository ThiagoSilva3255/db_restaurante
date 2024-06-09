CREATE TABLE `tb_beneficio` (
  `codigo_funcionario` int NOT NULL,
  `email_funcionario` varchar(200) NOT NULL,
  `codigo_beneficio` int NOT NULL,
  `codigo_empresa` int NOT NULL,
  `tipo_beneficio` varchar(45) NOT NULL,
  `valor_beneficio` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_funcionario`),
  CONSTRAINT `tb_beneficio_chk_1` CHECK ((`codigo_beneficio` in (1,2))),
  CONSTRAINT `tb_beneficio_chk_2` CHECK ((`tipo_beneficio` in (_utf8mb4'1',_utf8mb4'2')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci