-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 28-Nov-2017 às 15:07
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shirtworld`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_login` varchar(255) NOT NULL,
  `preco` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `user_id`, `user_login`, `preco`) VALUES
(282, NULL, 'admin', '0.0'),
(628, NULL, 'Ayrton', '0.0'),
(870, NULL, 'HD', '0.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho_produto`
--

CREATE TABLE `carrinho_produto` (
  `carrinho_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carrinho_produto`
--

INSERT INTO `carrinho_produto` (`carrinho_id`, `produto_id`) VALUES
(628, 1),
(628, 1),
(628, 1),
(628, 2),
(870, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Produto`
--

CREATE TABLE `Produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Produto`
--

INSERT INTO `Produto` (`id`, `nome`, `preco`, `descricao`, `categoria_id`) VALUES
(1, 'Camisa Algoritmos', 100, 'Camisa de algoritmos para lembrar que vocÃª tem que programar.', NULL),
(2, 'Caneca ++', 130, 'Para os amantes da linguagem C++ e que amam tomar um bom cafÃ© programando jogos e game engines.', NULL),
(3, 'Fone de Ouvido (Naruto)', 50, 'Para vocÃª que Ã© um ninja de verdade e ama fazer jutsus ', NULL),
(4, 'Carteira SAO ', 2, 'Para os amantes de Swort Art Online, anime Ã³timo .', NULL),
(5, 'Camisa Pain (Naruto)', 150, '\"Sinta a dor, Contemple a dor\"', NULL),
(6, 'Camisa Konan (Naruto)', 200, 'Linda e maravilhosa e poderosa Konan.', NULL),
(7, 'Caneca ONE PIECE', 200, 'ASASASASASAS', NULL),
(8, 'Carteira boruto', 5, 'uhauhauahuahuahahsahsuahsau', NULL),
(9, 'Carteira boruto', 5, 'uhauhauahuahuahahsahsuahsau', NULL),
(10, 'Camisa Dattebayo', 100, 'eratyusiaosasasasqwqefs', NULL),
(11, 'Camisa Dattebayo', 100, 'eratyusiaosasasasqwqefs', NULL),
(12, 'Fone de Ouvido (ONE  PIECE)', 300, 'Fones para amantes da voz do luffy', NULL),
(13, 'Camisa Algoritmos', 100, 'Camisa de algoritmos para lembrar que vocÃª tem que programar.', NULL),
(14, 'Camisa Algoritmos', 100, 'Camisa de algoritmos para lembrar que vocÃª tem que programar.', NULL),
(15, 'Camisa Algoritmos', 100, 'Camisa de algoritmos para lembrar que vocÃª tem que programar.', NULL),
(16, 'Camisa Algoritmos', 100, 'Camisa de algoritmos para lembrar que vocÃª tem que programar.', NULL),
(17, 'Caneca ++', 130, 'Para os amantes da linguagem C++ e que amam tomar um bom cafÃ© programando jogos e game engines.', NULL),
(18, 'Caneca ++', 130, 'Para os amantes da linguagem C++ e que amam tomar um bom cafÃ© programando jogos e game engines.', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `carrinho_id` varchar(45) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL,
  `login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `carrinho_id`, `admin`, `login`) VALUES
(995, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', '282', 0, 'admin'),
(996, NULL, NULL, '202cb962ac59075b964b07152d234b70', '628', 0, 'Ayrton'),
(997, NULL, NULL, '202cb962ac59075b964b07152d234b70', '870', 0, 'HD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CHCAR` (`user_id`),
  ADD KEY `CHLOGIN` (`user_login`);

--
-- Indexes for table `carrinho_produto`
--
ALTER TABLE `carrinho_produto`
  ADD KEY `CH_CAR_PROD_CAR` (`carrinho_id`),
  ADD KEY `CH_CAR_PROD_PROD` (`produto_id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Produto`
--
ALTER TABLE `Produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CHPROD` (`categoria_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Produto`
--
ALTER TABLE `Produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `CHCAR` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `CHLOGIN` FOREIGN KEY (`user_login`) REFERENCES `usuario` (`login`);

--
-- Limitadores para a tabela `carrinho_produto`
--
ALTER TABLE `carrinho_produto`
  ADD CONSTRAINT `CH_CAR_PROD_CAR` FOREIGN KEY (`carrinho_id`) REFERENCES `carrinho` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CH_CAR_PROD_PROD` FOREIGN KEY (`produto_id`) REFERENCES `Produto` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `Produto`
--
ALTER TABLE `Produto`
  ADD CONSTRAINT `CHPROD` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
