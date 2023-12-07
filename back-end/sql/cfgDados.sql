use cfg;

LOCK TABLES `participante` WRITE;
INSERT INTO `participante` (id, nome) VALUES 
	(1, "Marcos"),
    (2, "Djara"),
    (3, "Klei"),
    (4, "Julio"),
    (5, "Leona"),
    (6, "Paulo Henrique"),
    (7, "Paulo Steiner");
UNLOCK TABLES;

LOCK TABLES `compra` WRITE;
INSERT INTO `compra` VALUES
    (DEFAULT, 4, '15.50', '2023-04-20', '14:00:00', 'Marlene', 'Coca-cola'),
    (DEFAULT, 1, '7.50', '2023-04-20', '14:30:00', 'Marlene', 'Coca-cola'),
    (DEFAULT, 6, '12', '2023-04-20', '15:00:00', 'Marlene', 'Coca-cola'),
    (DEFAULT, 7, '15.00', '2023-04-20', '15:30:00', 'Engenharias', 'Coca-cola');
UNLOCK TABLES;

-- valor | compra | participante
LOCK TABLES `compra_participante` WRITE;
INSERT INTO `compra_participante` VALUES
	(DEFAULT, '3', 1, 4),
	(DEFAULT, '6.50', 1, 3),
	(DEFAULT, '3', 1, 1),
	(DEFAULT, '3', 1, 6),
	(DEFAULT, '3', 2, 1),
	(DEFAULT, '4.50', 2, 3),
	(DEFAULT, '4', 3, 6),
	(DEFAULT, '4', 3, 1),
	(DEFAULT, '4', 3, 3),
	(DEFAULT, '5', 4, 7),
	(DEFAULT, '5', 4, 1),
	(DEFAULT, '5', 4, 3),
UNLOCK TABLES;

LOCK TABLES `divida_participante` WRITE;
INSERT INTO `divida_participante` VALUES
	
UNLOCK TABLES;