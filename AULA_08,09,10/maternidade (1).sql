-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/10/2024 às 00:42
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

--
-- Despejando dados para a tabela `bebe`
--

INSERT INTO `bebe` (`codigo`, `nome`, `data`, `especialidade`, `peso`, `altura`, `codigo_eq`, `cpf`) VALUES
(110022, 'Isadora Amorim', '06/10/2024', NULL, 3, 30, 1133, 22556611),
(113388, 'Antônio Costa', '05/10/2024', NULL, 4, 40, 1122, 44665522),
(225566, 'João Costa', '05/10/2024', NULL, 3, 55, 1122, 44665522),
(446655, 'Eduarda da Silva', '06/10/2024', NULL, 3.5, 32, 1133, 11002233);

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe_medica`
--

CREATE TABLE `equipe_medica` (
  `codigo_eq` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `equipe_medica`
--

INSERT INTO `equipe_medica` (`codigo_eq`, `nome`) VALUES
(1122, 'Anjos'),
(1133, 'Arcanjos'),
(1144, 'Paraiso');

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

--
-- Despejando dados para a tabela `mae`
--

INSERT INTO `mae` (`cpf`, `nome`, `endereco`, `telefone`) VALUES
(11002233, 'Patrícia da Silva', 'Rua da Conceição', '97600-1122'),
(11338800, 'Maria da Penha', 'Avenida dos Amores', '97711-0099'),
(22556611, 'Erika Amorim', 'Rua das Flores', '98800-1111'),
(44665522, 'Helena Costa', 'Rua da Curva', '96543-6677');

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
-- Despejando dados para a tabela `profissional`
--

INSERT INTO `profissional` (`crm`, `nome`, `telefone`, `especialidade`, `codigo_eq`) VALUES
(110022, 'Pedro', '97600-1122', 'pediatra', 1122),
(113388, 'Maria', '97711-0099', 'pediatra', 1133),
(123456, 'Lucas', '99780-8191', 'anestesista', 1144),
(225566, 'Antonio', '98800-1111', 'cardiologista', 1122),
(446655, 'Teresa', '96543-6677', 'obstetra', 1133),
(876543, 'Marcelo', '96422-0102', 'anestesista', 1122);

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
