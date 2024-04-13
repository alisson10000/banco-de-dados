-- phpMyAdmin SQL Dump
-- version 3.0.1.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Dez 17, 2008 as 03:07 PM
-- Versão do Servidor: 5.0.67
-- Versão do PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `vendas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL,
  `cliente` varchar(80) NOT NULL,
  `endereco` varchar(80) default NULL,
  `cidade` varchar(50) default NULL,
  `cep` varchar(9) default NULL,
  `UF` char(2) default NULL,
  `CGC` varchar(20) default NULL,
  `IE` varchar(20) default NULL,
  PRIMARY KEY  (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `cliente`, `endereco`, `cidade`, `cep`, `UF`, `CGC`, `IE`) VALUES
(20, 'Álvaro Dias', 'Rua das Ladeiras nº12', 'Bento Gonçalves', '14252315', 'PR', '12365478/7894-7', '1365'),
(110, 'Joanadarque de albuquerque', 'Rua 25 nº 15', 'Alameda', '87459632', 'RJ', '14785236/8745-9', '4569'),
(130, 'Paulo José', 'Rua teves moreira nº 256', 'São Bento', '14987365', 'PR', '13654478/7894-9', '1365'),
(157, 'José de Arimatéia', 'rua Chico Xavier', 'Rio de Janeiro', '16478896', 'RJ', '15975313/4563-4', '1378'),
(180, 'Joe Peterson', 'Rua valão do sul nº 12', 'São Luis', '65000000', 'MA', '12365445/4569-7', '4468'),
(222, 'Célia', 'Av. Peres Santos nº 123', 'Niterói ', '30042345', 'RJ', '7894569/7894-1', '1235'),
(234, 'Weslley Silva Swesgni', 'Rua mailto nº 123', 'Pacaembu', '23581236', 'SP', '13634569/7894-5', '4651'),
(260, 'Eduardo Andrade', 'rua 13, nº 25', 'Baixada', '12456369', 'RJ', '12345698/4789-1', '4651'),
(290, 'Robson Aquino Rêgo', 'Rua maceió, nº 13', 'Mato velho', '14781236', 'MG', '45678912/1234-1', '1234'),
(390, 'Paula ', 'Av. taqueino Vento nº 24', 'Mafus', '65897423', 'DF', '45677894/7894-7', '4565'),
(410, 'Jó santos', 'Av. Tapueba nº 15', 'Ibirapuera', '14875789', 'SP', '78955462', '52314698/7531-8'),
(720, 'lucio', 'rua 15', 'sao luis ', '65000000', 'MA', '12354598/123', '1452'),
(830, 'julio batista', 'Rua Dep fernando Henrique, nº 57', 'São luis', '65000000', 'MA', '45688965/7894-6', '4561'),
(870, 'Maria ', 'Rua Lopes nº 21', 'Curitiba', '30078500', 'PR', '12365445/1452-1', '4561');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_pedido`
--

CREATE TABLE IF NOT EXISTS `item_pedido` (
  `id_item_pedido` int(11) NOT NULL auto_increment,
  `num_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY  (`id_item_pedido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Extraindo dados da tabela `item_pedido`
--

INSERT INTO `item_pedido` (`id_item_pedido`, `num_pedido`, `id_produto`, `quantidade`) VALUES
(1, 121, 25, 10),
(2, 121, 31, 35),
(3, 97, 77, 20),
(4, 101, 31, 9),
(5, 101, 78, 18),
(6, 101, 13, 5),
(7, 98, 77, 5),
(8, 148, 45, 8),
(9, 148, 31, 7),
(10, 148, 77, 3),
(11, 148, 25, 10),
(12, 148, 78, 30),
(13, 104, 53, 32),
(14, 203, 31, 6),
(15, 189, 78, 45),
(16, 143, 31, 20),
(17, 143, 78, 10),
(18, 105, 78, 10),
(19, 111, 25, 10),
(20, 111, 78, 70),
(21, 103, 53, 37),
(22, 91, 77, 40),
(23, 138, 22, 10),
(24, 138, 77, 35),
(25, 138, 53, 18),
(26, 108, 13, 17),
(27, 119, 77, 40),
(28, 119, 13, 6),
(29, 119, 22, 10),
(30, 119, 53, 43),
(31, 119, 13, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `num_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `prazo_entrega` int(11) NOT NULL,
  `data` date default NULL,
  PRIMARY KEY  (`num_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`num_pedido`, `id_cliente`, `id_vendedor`, `prazo_entrega`, `data`) VALUES
(91, 260, 11, 20, '2008-12-13'),
(97, 720, 209, 20, '2008-12-13'),
(98, 410, 209, 20, '2008-12-13'),
(101, 720, 101, 15, '2008-12-13'),
(103, 260, 11, 20, '2008-12-13'),
(104, 110, 213, 30, '2008-12-13'),
(105, 180, 240, 15, '2008-12-13'),
(108, 290, 310, 15, '2008-12-13'),
(111, 260, 240, 20, '2008-12-13'),
(119, 390, 250, 30, '2008-12-13'),
(121, 410, 209, 20, '2008-12-13'),
(127, 410, 11, 10, '2008-12-13'),
(137, 720, 101, 20, '2008-12-13'),
(138, 260, 11, 20, '2008-12-13'),
(143, 20, 111, 30, '2008-12-13'),
(148, 720, 720, 20, '2008-12-13'),
(189, 870, 101, 15, '2008-12-13'),
(203, 830, 101, 30, '2008-12-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `id_produto` int(11) NOT NULL,
  `unidade` varchar(60) NOT NULL,
  `produto` varchar(10) NOT NULL,
  `valor_unit` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `unidade`, `produto`, `valor_unit`) VALUES
(13, 'G', 'Ouro', 6.18),
(22, 'M', 'Linho', 0.11),
(25, 'Kg', 'Queijo', 0.97),
(30, 'SAC', 'Açúcar', 0.30),
(31, 'BAR', 'Chocolate', 0.87),
(45, 'M', 'Madeira', 0.25),
(53, 'M', 'Linha', 1.80),
(77, 'M', 'Papel', 1.05),
(78, 'L', 'Vinho', 2.00),
(87, 'M', 'Cano', 1.97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE IF NOT EXISTS `vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `vendedor` varchar(60) NOT NULL,
  `salario` decimal(10,0) NOT NULL,
  `comissao` char(1) NOT NULL,
  PRIMARY KEY  (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `vendedor`, `salario`, `comissao`) VALUES
(11, 'João', 2780, 'C'),
(101, 'João', 2650, 'C'),
(111, 'Carlos', 2490, 'C'),
(209, 'José', 1800, 'C'),
(213, 'Jonas', 2300, 'A'),
(240, 'Antônio', 9500, 'C'),
(250, 'Mauricio', 2930, 'B'),
(310, 'Josias', 870, 'B'),
(720, 'Felipe', 4600, 'A');
