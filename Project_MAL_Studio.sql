-- studio 1 = 8bit
-- studio 2 = Madhouse
-- studio 3 = Toei Animation
-- studio 4 = Studio Pierrot
-- studio 5 = TMS Entertainment
-- studio 6 = Production I.G
-- studio 7 = Gallop
-- studio 8 = Bones
-- studio 9 = ufotable

-- 1
SET IDENTITY_INSERT Project_MAL.Studio On
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 1, '8bit', '8bit', 'Suginami');

-- 2
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 2, 'Madhouse', 'Masao Maruyama', 'Honchō');

-- 3
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 3, 'Toei Animation', 'Kenzō Masaoka', 'Oizumi');

-- 4
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 4, 'Studio Pierrot', 'Studio Pierrot', 'Mitaka');

-- 5
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 5, 'TMS Entertainment', 'Sega Sammy Holdings', 'Nakano');

-- 6
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 6, 'Production I.G', 'Mitsuhisa Ishikawa', 'Kokubunji');

-- 7
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 7, 'Gallop', 'Akio Wakana', 'Nerima');

-- 8
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 8, 'Bones', 'Masahiko Minami', ' Suginami');

-- 9
SET IDENTITY_INSERT Project_MAL.Studio ON
INSERT INTO Project_MAL.Studio(studioId, name, producer, location)
VALUES( 9, 'Ufotable', 'Hikaru Kondo', ' Nakano');