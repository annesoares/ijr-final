CREATE TABLE areas (
	area_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL;
)

CREATE TABLE cargos (
	cargo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	area_id INT default NULL,
	CONSTRAINT areas_area_id_fk
	FOREIGN KEY (area_id)
	REFERENCES areas (area_id)
)

CREATE TABLE membros (
	membro_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	sobrenome TEXT default NULL,
)

CREATE TABLE membros_cargos (
	membro_id INT default NULL,
	CONSTRAINT membros_membro_id_fk
	FOREIGN KEY(membro_id)
	REFERENCES membros (membro_id),
	cargo_id INT default NULL,
	CONSTRAINT cargos_cargo_id_fk
	FOREIGN KEY(cargo_id)
	REFERENCES cargos (cargo_id);
)

CREATE TABLE objetivos (
	obj_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	descr LONGTEXT default NULL;
)

CREATE TABLE status (
	status_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL;
)

CREATE TABLE acoes (
	acao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	descricao LONGTEXT default NULL,
	membro_resp INT default NULL,
	CONSTRAINT membros_membro_id_fk
	FOREIGN KEY(membro_resp)
	REFERENCES membros (membro_id),
	custo_plan INT default NULL,
	custo_atual INT default NULL,
	status INT default NULL,
	CONSTRAINT status_status_id_fk
	FOREIGN KEY(status)
	REFERENCES status (status_id),
	area_id INT default NULL,
	CONSTRAINT areas_area_id_fk
	FOREIGN KEY (area_id)
	REFERENCES areas (area_id)
	oque TEXT default NULL,
	quando TEXT default NULL,
	onde TEXT default NULL,
	como TEXT default NULL,
	quanto TEXT default NULL,
	porque TEXT default NULL,
	quem TEXT default NULL;
)

CREATE TABLE acoes_objetivos (
	acao_id INT default NULL,
	CONSTRAINT acoes_acao_id_fk
	FOREIGN KEY(acao_id)
	REFERENCES acoes (acao_id),
	obj_id INT default NULL,
	CONSTRAINT objetivos_obj_id_fk
	FOREIGN KEY(obj_id)
	REFERENCES objetivos (obj_id);
)

CREATE TABLE atividades (
	atv_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome TEXT default NULL,
	data_inicio DATE default NULL,
	term_plan DATE default NULL,
	term_eftv DATE default NULL,
	status INT default NULL,
	CONSTRAINT status_status_id_fk
	FOREIGN KEY(status)
	REFERENCES status (status_id),
	obs LONGTEXT default NULL,
	entr_plan DATE default NULL,
	entr_feita BOOL default NULL,
	acao_id INT default NULL,
	CONSTRAINT acoes_acao_id_fk
	FOREIGN KEY(acao_id)
	REFERENCES acoes (acao_id);
)

-- NOVA VERSÃO DA TABELA, POR FAVOR CONFIRA SE ESTÁ DO JEITO QUE PROGRAMOU.
-- ESSA VERSÃO EU CRIEI NO MYSQL DO WAMP E EXPORTEI O ARQUIVO.

-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16-Maio-2016 às 16:14
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sae`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acoes`
--

CREATE TABLE IF NOT EXISTS `acoes` (
  `acao_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `descricao` longtext,
  `membro_resp` int(11) DEFAULT NULL,
  `custo_plan` int(11) DEFAULT NULL,
  `custo_atual` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `oque` text,
  `quando` text,
  `onde` text,
  `como` text,
  `quanto` text,
  `porque` text,
  `quem` text,
  PRIMARY KEY (`acao_id`),
  KEY `membro_resp` (`membro_resp`),
  KEY `status` (`status`),
  KEY `area_id` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acoes_objetivos`
--

CREATE TABLE IF NOT EXISTS `acoes_objetivos` (
  `acao_id` int(11) NOT NULL,
  `obj_id` int(11) NOT NULL,
  KEY `acao_id` (`acao_id`),
  KEY `obj_id` (`obj_id`),
  KEY `acao_id_2` (`acao_id`),
  KEY `obj_id_2` (`obj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE IF NOT EXISTS `atividades` (
  `atv_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `data_inicio` date DEFAULT NULL,
  `term_plan` date DEFAULT NULL,
  `term_eftv` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `obs` longtext,
  `entr_plan` date DEFAULT NULL,
  `entr_feita` tinyint(1) DEFAULT NULL,
  `acao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`atv_id`),
  KEY `status` (`status`),
  KEY `acao_id` (`acao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `cargo_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `area_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cargo_id`),
  KEY `area_id` (`area_id`),
  KEY `area_id_2` (`area_id`),
  KEY `area_id_3` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE IF NOT EXISTS `membros` (
  `membro_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `sobrenome` text,
  PRIMARY KEY (`membro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros_cargos`
--

CREATE TABLE IF NOT EXISTS `membros_cargos` (
  `membro_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  KEY `membro_id` (`membro_id`),
  KEY `cargo_id` (`cargo_id`),
  KEY `membro_id_2` (`membro_id`),
  KEY `cargo_id_2` (`cargo_id`),
  KEY `membro_id_3` (`membro_id`),
  KEY `cargo_id_3` (`cargo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetivos`
--

CREATE TABLE IF NOT EXISTS `objetivos` (
  `obj_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `descr` longtext,
  PRIMARY KEY (`obj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

