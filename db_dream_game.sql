-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/02/2025 às 15:25
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_dream_game`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_games`
--

CREATE TABLE `tb_games` (
  `id_Games` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `avaliacao` varchar(255) NOT NULL,
  `tamanho` varchar(4) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` varchar(6) NOT NULL,
  `desenvolvedor` varchar(50) NOT NULL,
  `genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_games`
--

INSERT INTO `tb_games` (`id_Games`, `titulo`, `avaliacao`, `tamanho`, `descricao`, `valor`, `desenvolvedor`, `genero`) VALUES
(1, 'FINAL FANTASY VII REMAKE INTERGRADE', 'Minha primeira vez jogando Final Fantasy foi bem legal.', ' 8 G', 'A Companhia de Energia Elétrica Shinra controla o mundo inteiro, explorando mako, a energia vital do planeta, em seus reatores. Um grupo de idealistas maltrapilhos, conhecido como Avalanche, é um dos últimos bastiões de resistência.', '174', 'Equare Enix', 'Fantasia'),
(2, 'Hogwarts Legacy', 'O jogo é absolutamente incrível! Os gráficos são belíssimos, várias partes do jogo poderiam facilmente ser usadas como wallpapers de tão bonitas (eu mesma fiz vários!). ', ' 16 ', 'magos', '200', 'avalanche software', 'magia'),
(3, 'Palworld', 'fazia tempos que queria ficar cheio de pals, agora da pra colecionar pal, mt bom, pals de varios tamanhos, formas e cores, recomendo apesar dos apesares, bora segurar nossos pals e amalos', ' 16 ', 'Este é um jogo completamente inovador de fabricação e sobrevivência em mundo aberto com suporte para vários jogadores.', 'R$ 88.', 'Pocketpair', 'Ação, Aventura, Indie, RPG, Acesso Antecipado'),
(4, 'Doom', '4', '14ds', 'sdfsdfffffffffffffffffffffsdfsdfsdfdsfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf', 'R$564.', 'sdkfsdfsadfs', ''),
(5, 'mario', '4', '16,5', 'man que pula encima dos cogumelos ', 'R$163.', 'sega', 'ação');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_games`
--
ALTER TABLE `tb_games`
  ADD PRIMARY KEY (`id_Games`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_games`
--
ALTER TABLE `tb_games`
  MODIFY `id_Games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
