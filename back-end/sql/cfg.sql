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
  `quantidade_a_pagar` DECIMAL(6,2) NOT NULL,
  `compra_id` bigint NOT NULL,
  `participante_id` bigint NOT NULL,
  PRIMARY KEY(`compra_id`,`participante_id`),
  KEY `FK_compra` (`compra_id`),
  KEY `FK_participante` (`participante_id`),
  CONSTRAINT `FK_compra` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
	CONSTRAINT `FK_participante` FOREIGN KEY (`participante_id`) REFERENCES `participante` (`id`)
);

DROP TABLE IF EXISTS `divida_participante`;
CREATE TABLE `divida_participante` (
  `participante1_id` bigint NOT NULL,
  `participante2_id` bigint NOT NULL,
  `divida_p1_para_p2` decimal(10,2) NOT NULL,
  `divida_p2_para_p1` decimal(10,2) NOT NULL,
  PRIMARY KEY (`participante1_id`, `participante2_id`),
  KEY `FK_participante1` (`participante1_id`),
  KEY `FK_participante2` (`participante2_id`),
	CONSTRAINT `FK_participante1` FOREIGN KEY (`participante1_id`) REFERENCES `participante` (`id`),
	CONSTRAINT `FK_participante2` FOREIGN KEY (`participante2_id`) REFERENCES `participante` (`id`)
)
