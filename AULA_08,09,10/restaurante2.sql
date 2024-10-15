-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14/10/2024 às 23:58
-- Versão do servidor: 5.7.36
-- Versão do PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurante2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `CPF` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `RG` int(11) NOT NULL,
  `FUNCAO` varchar(20) NOT NULL,
  `TELEFONE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `SETOR` int(11) NOT NULL,
  `CADEIRAS` int(11) NOT NULL,
  `IDMESAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `NUM_PEDIDO` int(11) NOT NULL,
  `IDMESAS` int(11) NOT NULL,
  `CPF` int(11) NOT NULL,
  `CODIGO` int(11) NOT NULL,
  `DATA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `CODIGO` int(11) NOT NULL,
  `NOME_PRODUTO` varchar(50) NOT NULL,
  `PREÇO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`CPF`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`IDMESAS`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`NUM_PEDIDO`),
  ADD KEY `IDMESAS` (`IDMESAS`),
  ADD KEY `CPF` (`CPF`),
  ADD KEY `CODIGO` (`CODIGO`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`IDMESAS`) REFERENCES `mesa` (`IDMESAS`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`CPF`) REFERENCES `funcionario` (`CPF`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`CODIGO`) REFERENCES `produto` (`CODIGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
