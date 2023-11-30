use cfg;

LOCK TABLES `compra` WRITE;
INSERT INTO `compra` VALUES
    (1, '12.00', '2023-04-20', '12:00:00', 'Marlene', 'Coca-cola'),
    (2, '5.34', '2023-04-20', '14:00:00', 'Marlene', 'Coca-cola'),
    (3, '7.30', '2023-04-20', '14:30:00', 'Marlene', 'Coca-cola'),
    (4, '11.69', '2023-04-20', '15:00:00', 'Marlene', 'Coca-cola'),
    (5, '15.00', '2023-04-20', '15:30:00', 'Engenharias', 'Coca-cola');
UNLOCK TABLES;

LOCK TABLES `participante` WRITE;
INSERT INTO `participante` VALUES 
	(1, "Marcos"),
    (2, "Djara"),
    (3, "Klei"),
    (4, "Julio"),
    (5, "Leona"),
    (6, "Paulo Henrique"),
    (7, "Paulo Steiner");
UNLOCK TABLES;

LOCK TABLES `compra_participante` WRITE;
INSERT INTO `compra_participante` VALUES
	(1, 5, 5, 1),
    (2, 5, 5, 2),
    (3, 5, 5, 3),
    (4, 5, 5, 4),
    (5, 5, 5, 5);
UNLOCK TABLES;