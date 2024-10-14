-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11/10/2024 às 23:45
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
-- Banco de dados: `maternidade`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bebe`
--

CREATE TABLE `bebe` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `data` varchar(10) DEFAULT NULL,
  `especialidade` varchar(20) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `codigo_eq` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe_medica`
--

CREATE TABLE `equipe_medica` (
  `codigo_eq` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mae`
--

CREATE TABLE `mae` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `profissional`
--

CREATE TABLE `profissional` (
  `crm` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `especialidade` varchar(20) DEFAULT NULL,
  `codigo_eq` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bebe`
--
ALTER TABLE `bebe`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codigo_eq` (`codigo_eq`),
  ADD KEY `cpf` (`cpf`);

--
-- Índices de tabela `equipe_medica`
--
ALTER TABLE `equipe_medica`
  ADD PRIMARY KEY (`codigo_eq`);

--
-- Índices de tabela `mae`
--
ALTER TABLE `mae`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`crm`),
  ADD KEY `codigo_eq` (`codigo_eq`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `bebe`
--
ALTER TABLE `bebe`
  ADD CONSTRAINT `bebe_ibfk_1` FOREIGN KEY (`codigo_eq`) REFERENCES `equipe_medica` (`codigo_eq`),
  ADD CONSTRAINT `bebe_ibfk_2` FOREIGN KEY (`cpf`) REFERENCES `mae` (`cpf`);

--
-- Restrições para tabelas `profissional`
--
ALTER TABLE `profissional`
  ADD CONSTRAINT `profissional_ibfk_1` FOREIGN KEY (`codigo_eq`) REFERENCES `equipe_medica` (`codigo_eq`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
