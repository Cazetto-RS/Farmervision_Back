-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 13/10/2025 às 14:13
-- Versão do servidor: 8.0.30
-- Versão do PHP: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

USE DATABASE farmervision;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `farmervision`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adocao`
--

CREATE TABLE `adocao` (
  `mac_placa` char(12) NOT NULL,
  `planta_usuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `adocao`
--

INSERT INTO `adocao` (`mac_placa`, `planta_usuario`) VALUES
('A812FF9B31', 2),
('A812FF9B32', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_sensor`
--

CREATE TABLE `dados_sensor` (
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valores` json DEFAULT NULL,
  `mac_placa` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `dados_sensor`
--

INSERT INTO `dados_sensor` (`data`, `valores`, `mac_placa`) VALUES
('2025-10-13 11:03:49', '{\"umidade\": 63.2, \"temperatura\": 25.6}', 'A812FF9B32'),
('2025-10-13 11:04:52', '{\"umidade\": 63.2, \"temperatura\": 27.6}', 'A812FF9B32'),
('2025-10-13 11:05:52', '{\"umidade\": 63.2, \"temperatura\": 27.6}', 'A812FF9B32'),
('2025-10-13 11:06:08', '{\"umidade\": 63.2, \"temperatura\": 27.6}', 'A812FF9B31'),
('2025-10-13 11:09:04', '{\"umidade\": 63.2, \"temperatura\": 27.6}', 'A812FF9B32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `plantas`
--

CREATE TABLE `plantas` (
  `id` int NOT NULL,
  `nome_comum` varchar(100) DEFAULT NULL,
  `nome_cientifico` varchar(150) DEFAULT NULL,
  `familia` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `descricao` text,
  `reino` varchar(50) DEFAULT NULL,
  `divisao` varchar(50) DEFAULT NULL,
  `classe` varchar(50) DEFAULT NULL,
  `luz` varchar(100) DEFAULT NULL,
  `solo` varchar(100) DEFAULT NULL,
  `agua` varchar(100) DEFAULT NULL,
  `temperatura_min` float DEFAULT NULL,
  `temperatura_max` float DEFAULT NULL,
  `ph_solo_min` float DEFAULT NULL,
  `ph_solo_max` float DEFAULT NULL,
  `usos` text,
  `partes_utilizadas` varchar(255) DEFAULT NULL,
  `toxicidade` varchar(100) DEFAULT NULL,
  `efeitos_toxicos` text,
  `imagem_principal` varchar(255) DEFAULT NULL,
  `clima` varchar(100) DEFAULT NULL,
  `altura_media_cm` float DEFAULT NULL,
  `tempo_de_cultivo_dias` int DEFAULT NULL,
  `floracao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `plantas`
--

INSERT INTO `plantas` (`id`, `nome_comum`, `nome_cientifico`, `familia`, `genero`, `descricao`, `reino`, `divisao`, `classe`, `luz`, `solo`, `agua`, `temperatura_min`, `temperatura_max`, `ph_solo_min`, `ph_solo_max`, `usos`, `partes_utilizadas`, `toxicidade`, `efeitos_toxicos`, `imagem_principal`, `clima`, `altura_media_cm`, `tempo_de_cultivo_dias`, `floracao`) VALUES
(1, 'Babosa', 'Aloe vera', 'Asphodelaceae', 'Aloe', 'Planta suculenta com folhas espessas, conhecida por suas propriedades cicatrizantes e hidratantes.', 'Plantae', 'Magnoliophyta', 'Liliopsida', 'Sol pleno', 'Bem drenado e arenoso', 'Pouca rega, solo seco entre irrigações', 15, 30, 6, 7.5, 'Medicinal, cosmético, ornamental', 'Folhas', 'Levemente tóxica para animais', 'Vômitos e diarreia em cães e gatos', 'https://exemplo.com/imagens/aloe-vera.jpg', 'Tropical e subtropical', 60, 300, 'Primavera'),
(2, 'Hortelã', 'Mentha spicata', 'Lamiaceae', 'Mentha', 'Planta aromática muito utilizada em chás e na culinária, com propriedades digestivas.', 'Plantae', 'Magnoliophyta', 'Magnoliopsida', 'Meia sombra', 'Úmido e fértil', 'Rega frequente', 10, 25, 6, 7.5, 'Culinário, medicinal, aromático', 'Folhas', 'Não tóxica', 'Nenhum conhecido', 'https://exemplo.com/imagens/hortela.jpg', 'Temperado', 40, 135, 'Verão'),
(3, 'Lavanda', 'Lavandula angustifolia', 'Lamiaceae', 'Lavandula', 'Planta ornamental e aromática, muito usada em perfumaria e para relaxamento.', 'Plantae', 'Magnoliophyta', 'Magnoliopsida', 'Sol pleno', 'Bem drenado', 'Pouca rega', 15, 30, 6.5, 7.5, 'Ornamental, aromático, medicinal', 'Flores', 'Levemente tóxica para animais', 'Pode causar náuseas em animais', 'https://exemplo.com/imagens/lavanda.jpg', 'Mediterrâneo', 75, 540, 'Verão'),
(4, 'Manjericão', 'Ocimum basilicum', 'Lamiaceae', 'Ocimum', 'Erva aromática muito utilizada na culinária italiana e em pratos mediterrâneos.', 'Plantae', 'Magnoliophyta', 'Magnoliopsida', 'Sol pleno', 'Fértil e bem drenado', 'Rega regular', 18, 27, 6, 7.5, 'Culinário, medicinal', 'Folhas', 'Não tóxica', 'Nenhum conhecido', 'https://exemplo.com/imagens/manjericao.jpg', 'Tropical', 45, 120, 'Verão'),
(5, 'Suculenta', 'Echeveria elegans', 'Crassulaceae', 'Echeveria', 'Planta ornamental que armazena água em suas folhas, ideal para jardins de baixa manutenção.', 'Plantae', 'Magnoliophyta', 'Magnoliopsida', 'Sol pleno', 'Bem drenado', 'Pouca rega', 10, 30, 6, 7.5, 'Ornamental', 'Folhas', 'Não tóxica', 'Nenhum conhecido', 'https://exemplo.com/imagens/suculenta.jpg', 'Árido', 15, 270, 'Primavera');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessoes`
--

CREATE TABLE `sessoes` (
  `usuario` int NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `validade` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `sessoes`
--

INSERT INTO `sessoes` (`usuario`, `token`, `validade`) VALUES
(1, '2c0eaf84ef62a7e3453ca3447b4ca6f0fabcafc41c0665c379e3a79f94a99018e860689c2596b76ca1fb15f2c13dd5022a3bf69e238d9336c9726257dcb22d47', '2025-10-14 22:16:34'),
(4, '19621e4a316c435c49fc2469dd3bb67125df9219d382ae9f0c157218752650fc09afe1cf7e268006ef1b1f6519bda1f150cc7b94882f3859778ae7a31917959e', '2025-09-20 23:05:56'),
(6, '04981122320f0a758b4c40622d5408d940e048c79385aa2a0b360c74f1827c8c7a66f151e0d0e10e8e58667d2d6171bb50574517f9a1b91204bdf27f9f86e71e', '2025-09-20 23:11:49'),
(7, '694d119bf707175be2e4f91e33a854e8b809b055d6f4820de73aa079673f4395d5e30e72f5d19bfc36765296af783f8cfedac9b2030482830a4391770b256998', '2025-10-08 01:09:39'),
(8, 'd6b68f04d5d3be1231e9a39af7689b6fb704d23f04de0078d8a48ed91ebd19e40d96be0f3d0fe323fb036514316d45cfcbc228d90d65c37234ec8658c255aa4b', '2025-10-14 22:11:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `telefone`, `email`, `password`) VALUES
(1, 'Rafael Sandei Cazetto', '+55 15 98813-0769', 'rafasandei17@gmail.com', '$2b$10$V2BACNr0ml4YBYEFlrIXbeLV1kzAdaUS4Gc9NoGE7HXj8i1p95koa'),
(2, 'Icaro Cau', '+55 15 99120-9505', 'icarotsss@gmail.com', '$2b$10$V2BACNr0ml4YBYEFlrIXbeLV1kzAdaUS4Gc9NoGE7HXj8i1p95koa'),
(3, 'Nicholas Rodrigues Pereira', '(55) +15 9881-3076', 'nicholasrodrigues@gmail.com', '$2b$10$V2BACNr0ml4YBYEFlrIXbeLV1kzAdaUS4Gc9NoGE7HXj8i1p95koa'),
(4, 'teste', '+55 15 11111-1111', 'teste3gmail.com', '$2b$10$/GiUgBVNIJIYBNSLn3omb.XtRZQa9qnrAZmj5J82YpfxaiPn0MwAu'),
(5, 'teste', '+55 15 11111-1111', 'teste4gmail.com', '$2b$10$pO4bZHJr1KLDtrvgpFqYK.02RDKDKAgTh1KY1abdlHHB31VLlgFPK'),
(6, 'teste token', '+55 15 11111-1111', 'testeTokengmail.com', '$2b$10$/sUrNh5/jafBNPesQXks2eEgBdK6RiPujGkJ5/.aa4ofHvbTMoJoC'),
(7, 'Rafael Sandei', '(55) +15 9881-3076', 'contamuitoloka@gmail.com', '$2b$10$8t267.Nn63al2cS2RGHbaOARawMpI0k.4XMfHIjCP1ZetlYqF5Tly'),
(8, 'teste', '(+22) 22 22222-2222', 'naopossivel@gmail.com', '$2b$10$wn/FWlB.r9US25RXvXfIduh.YrQm8RF16zkDg8peWb7xH4eG1vMdq');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario_plantas`
--

CREATE TABLE `usuario_plantas` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `planta_id` int NOT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuario_plantas`
--

INSERT INTO `usuario_plantas` (`id`, `usuario_id`, `planta_id`, `data_cadastro`) VALUES
(1, 1, 3, '2025-08-05 07:30:42'),
(2, 7, 1, '2025-10-06 13:10:03'),
(3, 7, 3, '2025-10-06 13:10:13'),
(4, 1, 1, '2025-10-06 13:55:34'),
(5, 1, 1, '2025-10-06 13:57:03'),
(6, 1, 1, '2025-10-06 13:57:16'),
(7, 8, 1, '2025-10-13 10:11:49'),
(8, 1, 5, '2025-10-13 10:16:08');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adocao`
--
ALTER TABLE `adocao`
  ADD PRIMARY KEY (`mac_placa`),
  ADD KEY `planta_usuario` (`planta_usuario`);

--
-- Índices de tabela `dados_sensor`
--
ALTER TABLE `dados_sensor`
  ADD KEY `mac_placa` (`mac_placa`),
  ADD KEY `mac_placa_2` (`mac_placa`);

--
-- Índices de tabela `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sessoes`
--
ALTER TABLE `sessoes`
  ADD PRIMARY KEY (`usuario`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `usuario_plantas`
--
ALTER TABLE `usuario_plantas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `planta_id` (`planta_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `usuario_plantas`
--
ALTER TABLE `usuario_plantas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `adocao`
--
ALTER TABLE `adocao`
  ADD CONSTRAINT `adocao_ibfk_1` FOREIGN KEY (`planta_usuario`) REFERENCES `usuario_plantas` (`id`);

--
-- Restrições para tabelas `dados_sensor`
--
ALTER TABLE `dados_sensor`
  ADD CONSTRAINT `dados_sensor_ibfk_1` FOREIGN KEY (`mac_placa`) REFERENCES `adocao` (`mac_placa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `sessoes`
--
ALTER TABLE `sessoes`
  ADD CONSTRAINT `sessoes_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);

--
-- Restrições para tabelas `usuario_plantas`
--
ALTER TABLE `usuario_plantas`
  ADD CONSTRAINT `usuario_plantas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usuario_plantas_ibfk_2` FOREIGN KEY (`planta_id`) REFERENCES `plantas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
