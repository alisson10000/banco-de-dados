-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Jan-2016 às 02:44
-- Versão do servidor: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `id_noticia` int(11) NOT NULL,
  `id_membro` int(11) NOT NULL,
  `data_comentario` date NOT NULL,
  `texto_comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `id_noticia`, `id_membro`, `data_comentario`, `texto_comentario`) VALUES
(1, 1, 1, '2016-01-01', 'Não concordo com isso , pois isso é uma forma das tv por assinaturas manterem seus preços altos.(João)'),
(2, 2, 2, '2016-01-15', 'É impressionante como a tecnologia tem evoluido.(Carlos)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `id_membro` int(11) NOT NULL,
  `nome_membro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`id_membro`, `nome_membro`) VALUES
(1, 'joão'),
(2, 'carlos'),
(3, 'maria'),
(4, 'betty'),
(5, 'paty'),
(6, 'maria'),
(7, 'maria'),
(8, 'maria'),
(9, 'maria'),
(10, 'maria'),
(11, 'maria'),
(12, 'maria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo_noticia` text NOT NULL,
  `texto_noticia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo_noticia`, `texto_noticia`) VALUES
(1, 'Sacanagem? Empresas de TV por assinatura planejam um ''ataque'' à Netflix', 'Não é novidade para ninguém que a Netflix é um sucesso inquestionável em todo o mundo, inclusive no Brasil. Por aqui, diversos lares contam com esse serviço de streaming para assistir a séries, vídeos e documentários em qualidade HD. Entretanto, parece que não são todos os que estão contentes com os bons negócios da empresa por aqui.\r\nDe acordo com uma reportagem do UOL, as operadoras de TV por assinatura planejam um ataque à Netflix depois que elas perderam quase 1 milhão de assinantes desde 2014. Segundo a matéria, essas companhias estudam formas de prejudicar o serviço, que a cada ano ganha mais usuários.'),
(2, 'Recorde: máquina resolve cubo mágico em apenas um segundo [vídeo]', 'Maquinas capazes de resolver cubos mágicos podem até não ser novidade, mas o aparelho do vídeo acima certamente vai impressioná-lo por sua rapidez: ele consegue solucionar um cubo de Rubik em apenas 1 segundo – 1,019 segundo, para ser mais preciso, em sua melhor performance.\r\nO funcionamento do mecanismo, criado por Jay Flatland e Paul Rose, é bastante simples. A máquina conta com seis servo-motores ligados ao bloco central de cada lado do cubo, que movimentam o brinquedo. Usando quatro webcams comuns posicionadas estrategicamente na tela, o aparelho identifica a posição de cada cor e, com a ajuda de um software de computador, analisa a melhor sequência de movimentos através de um algoritmo complexo.\r\nPode parecer um sistema simples até demais, mas parece que é exatamente isso o que torna o mecanismo tão eficiente. A prova disso, como você já deve ter visto no vídeo, é um aparelho capaz de resolver um puzzle em menos de dois segundos.'),
(3, 'BBBB', 'BBBBBB');

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

CREATE TABLE `respostas` (
  `id_resposta` int(11) NOT NULL,
  `id_membro` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL,
  `data_resposta` date NOT NULL,
  `texto_resposta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `respostas`
--

INSERT INTO `respostas` (`id_resposta`, `id_membro`, `id_comentario`, `data_resposta`, `texto_resposta`) VALUES
(1, 3, 1, '2016-01-01', 'Com toda certeza isso é um roubo (maria)'),
(2, 4, 2, '2016-01-09', 'É impressionante mesmo como a tecnologia avança as vezes me da medo.(Betty)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_comentario` (`id_comentario`),
  ADD KEY `id_noticia` (`id_noticia`),
  ADD KEY `id_membro` (`id_membro`);

--
-- Indexes for table `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`id_membro`),
  ADD KEY `id_membro` (`id_membro`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `id_noticia` (`id_noticia`);

--
-- Indexes for table `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`id_resposta`),
  ADD KEY `id_resposta` (`id_resposta`),
  ADD KEY `id_membro` (`id_membro`),
  ADD KEY `id_comentario` (`id_comentario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `membros`
--
ALTER TABLE `membros`
  MODIFY `id_membro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `respostas`
--
ALTER TABLE `respostas`
  MODIFY `id_resposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_membro`) REFERENCES `membros` (`id_membro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_noticia`) REFERENCES `noticias` (`id_noticia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `respostas_ibfk_1` FOREIGN KEY (`id_membro`) REFERENCES `membros` (`id_membro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `respostas_ibfk_2` FOREIGN KEY (`id_comentario`) REFERENCES `comentarios` (`id_comentario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
