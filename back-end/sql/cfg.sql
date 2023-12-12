DROP DATABASE IF EXISTS `cfg`;
CREATE DATABASE `cfg`;
use `cfg`;

DROP TABLE IF EXISTS `participante`;
CREATE TABLE `participante` (
	`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `apelido` varchar(255)
);

DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra` (
  `id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `fiador_id` bigint NOT NULL,
  `total` decimal(6, 2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `local` varchar(255),
  `descricao` varchar(500),
  KEY `FK_fiador` (`fiador_id`),
  CONSTRAINT `FK_fiador` FOREIGN KEY (`fiador_id`) REFERENCES `participante` (`id`)
);

DROP TABLE IF EXISTS `compra_participante`;
CREATE TABLE `compra_participante` (
  `id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `compra_id` bigint NOT NULL,
  `participante_id` bigint NOT NULL,
  `valor` DECIMAL(6,2) NOT NULL,
  KEY `FK_compra` (`compra_id`),
  KEY `FK_participante` (`participante_id`),
  CONSTRAINT `FK_compra` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
	CONSTRAINT `FK_participante` FOREIGN KEY (`participante_id`) REFERENCES `participante` (`id`)
);

DROP TABLE IF EXISTS `divida_participante`;
CREATE TABLE `divida_participante` (
  `id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `credor_id` bigint NOT NULL,
  `devedor_id` bigint NOT NULL,
  `divida` DECIMAL(6,2) NOT NULL,
  KEY `FK_credor` (`credor_id`),
  KEY `FK_devedor` (`devedor_id`),
  CONSTRAINT `FK_credor` FOREIGN KEY (`credor_id`) REFERENCES `participante` (`id`),
  CONSTRAINT `FK_devedor` FOREIGN KEY (`devedor_id`) REFERENCES `participante` (`id`)
);

DROP TABLE IF EXISTS `transacoes`;
CREATE TABLE `transacoes` (
  `id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `quantidade` DECIMAL (6,2) NOT NULL,
  `compra_referenciada_id` bigint,
  `mensagem` varchar(500),
  KEY `FK_t_compra` (`compra_referenciada_id`),
  CONSTRAINT `FK_t_compra` FOREIGN KEY (`compra_referenciada_id`) REFERENCES `compra` (`id`)
);
