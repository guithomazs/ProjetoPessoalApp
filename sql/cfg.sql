DROP DATABASE IF EXISTS `cfg`;
CREATE DATABASE `cfg`;

use `cfg`;

DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra` (
  `id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `total` decimal(6, 2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `local` varchar(255),
  `descricao` varchar(500)
);

DROP TABLE IF EXISTS `participante`;
CREATE TABLE `participante` (
	`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nome` varchar(255) NOT NULL
);

DROP TABLE IF EXISTS `compra_participante`;
CREATE TABLE `compra_participante` (
	`id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `quantidade_a_pagar` DECIMAL(6,2) NOT NULL,
    `compra_id` bigint NOT NULL,
    `participante_id` bigint NOT NULL,
    KEY `FK_compra` (`compra_id`),
	KEY `FK_participante` (`participante_id`),
	CONSTRAINT `FK_compra` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
	CONSTRAINT `FK_participante` FOREIGN KEY (`participante_id`) REFERENCES `participante` (`id`)
);
