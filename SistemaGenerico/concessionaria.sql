-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jun-2023 às 17:09
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `concessionaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `cpf_cliente` varchar(15) DEFAULT NULL,
  `telefone_cliente` varchar(16) DEFAULT NULL,
  `endereco_cliente` varchar(50) DEFAULT NULL,
  `email_cliente` varchar(50) DEFAULT NULL,
  `datanasc_cliente` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `cpf_cliente`, `telefone_cliente`, `endereco_cliente`, `email_cliente`, `datanasc_cliente`) VALUES
(2, 'vander', '666.666.666-66', '(69)69696-9696', 'asdsfdfdf', 'cvbnm@gmail', '1111-11-11'),
(3, 'tisgu', '888.888.888-88', '(55)55555-5555', 'fdsfsdfs', 'sdasdasd@gdfgd', '1111-11-11'),
(11, 'Tiago Ramos Aguiar', '123.090.859-52', '(48)99696-7134', 'Rua Luiz Nazari, 80', 'tiagoramosaguiar@outlook.com', '2006-02-09'),
(12, 'João Luis Ricken', '111.204.749-22', '(43)44323-4676', 'caravaggio', 'joao@gmail.com', '2005-09-22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome_funcionario` varchar(50) DEFAULT NULL,
  `cpf_funcionario` varchar(15) DEFAULT NULL,
  `cargo_funcionario` varchar(50) DEFAULT NULL,
  `telefone_funcionario` varchar(16) DEFAULT NULL,
  `salario_funcionario` double(10,2) DEFAULT NULL,
  `senha_funcionario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome_funcionario`, `cpf_funcionario`, `cargo_funcionario`, `telefone_funcionario`, `salario_funcionario`, `senha_funcionario`) VALUES
(1, 'jao', '111.111.111-11', 'asd', '(11)11111-1111', 6900.00, '69'),
(2, 'Lucas Castellan', '777.777.777-77', 'Gerente', '(48) 99135-1926', 3621.00, '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id_veiculo` int(11) NOT NULL,
  `marca_veiculo` varchar(50) DEFAULT NULL,
  `modelo_veiculo` varchar(50) DEFAULT NULL,
  `cor_veiculo` varchar(50) DEFAULT NULL,
  `preco_veiculo` double(10,2) DEFAULT NULL,
  `disponivel_veiculo` tinyint(1) DEFAULT 1,
  `ano_veiculo` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`id_veiculo`, `marca_veiculo`, `modelo_veiculo`, `cor_veiculo`, `preco_veiculo`, `disponivel_veiculo`, `ano_veiculo`) VALUES
(2, 'fiat', 'uno', 'branco', 150000.00, 1, '2077'),
(4, 'toyota', 'supra', 'vermelho', 100000.00, 0, '1969'),
(7, 'Nissan', 'GTR R34', 'Preto', 1000000.00, 0, '2018'),
(8, 'Lamborghini', 'Huracan', 'Amarela', 150000.00, 0, '2025');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_vendas` int(11) NOT NULL,
  `cod_veiculo` int(11) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_funcionario` int(11) DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  `valor_venda` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_vendas`, `cod_veiculo`, `cod_cliente`, `cod_funcionario`, `data_venda`, `valor_venda`) VALUES
(2, 2, 2, 1, '2023-06-26', 150000.00),
(6, 4, 3, 1, '2023-06-27', 100000.00),
(7, 7, 11, 2, '2023-06-27', 1000000.00),
(8, 8, 11, 2, '2023-06-27', 150000.00);

--
-- Acionadores `vendas`
--
DELIMITER $$
CREATE TRIGGER `trg_vendas_after_delete` AFTER DELETE ON `vendas` FOR EACH ROW BEGIN
    UPDATE veiculos
    SET disponivel_veiculo = TRUE
    WHERE id_veiculo = OLD.cod_veiculo;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_vendas_after_insert` AFTER INSERT ON `vendas` FOR EACH ROW BEGIN
    UPDATE veiculos
    SET disponivel_veiculo = FALSE
    WHERE id_veiculo = NEW.cod_veiculo;
END
$$
DELIMITER ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cpf_cliente` (`cpf_cliente`),
  ADD UNIQUE KEY `cpf_cliente_2` (`cpf_cliente`),
  ADD UNIQUE KEY `unique_cpf_cliente` (`cpf_cliente`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id_veiculo`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_vendas`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_veiculo` (`cod_veiculo`),
  ADD KEY `cod_funcionario` (`cod_funcionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_vendas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`cod_veiculo`) REFERENCES `veiculos` (`id_veiculo`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`cod_funcionario`) REFERENCES `funcionarios` (`id_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
