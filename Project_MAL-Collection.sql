-- GPR LTI d1.1 Jarne Bauwens & Dennis Luyten
-- Opvullen van Collection table

-- 1)
SET IDENTITY_INSERT Project_MAL.Collection ON
INSERT INTO Project_MAL.Collection(collectionId, gebruikerId)
VALUES(1, 1);

SET IDENTITY_INSERT Project_MAL.Collection ON
INSERT INTO Project_MAL.Collection(collectionId, gebruikerId)
VALUES(2, 1);

SET IDENTITY_INSERT Project_MAL.Collection ON
INSERT INTO Project_MAL.Collection(collectionId, gebruikerId)
VALUES(3, 1);