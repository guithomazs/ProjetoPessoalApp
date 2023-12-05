SET SESSION FOREIGN_KEY_CHECKS=0;

INSERT INTO `participante` (id, nome) VALUES 
	(1, "Marcos"),
    (2, "Djara"),
    (3, "Klei"),
    (4, "Julio"),
    (5, "Leona"),
    (6, "Paulo Henrique"),
    (7, "Paulo Steiner");

INSERT INTO `compra` VALUES
    (1, 7, '12.00', '2023-04-20', '12:00:00', 'Marlene', 'Coca-cola'),
    (2, 7, '5.34', '2023-04-20', '14:00:00', 'Marlene', 'Coca-cola'),
    (3, 7, '7.30', '2023-04-20', '14:30:00', 'Marlene', 'Coca-cola'),
    (4, 7, '11.69', '2023-04-20', '15:00:00', 'Marlene', 'Coca-cola'),
    (5, 7, '15.00', '2023-04-20', '15:30:00', 'Engenharias', 'Coca-cola');

INSERT INTO `compra_participante` VALUES
	(DEFAULT, '5', 5, 1),
    (DEFAULT, '5', 5, 2),
    (DEFAULT, '5', 5, 3),
    (DEFAULT, '5', 5, 4),
    (DEFAULT, '5', 5, 5);

SET SESSION FOREIGN_KEY_CHECKS=1;
