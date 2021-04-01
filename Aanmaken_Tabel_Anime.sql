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
SET IDENTITY_INSERT Project_MAL.Anime on
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 1, 1, 'That Time I Got Reincarnated as a Slime', 24, '2018-10-02', 'finished airing', 23, 8.07, 'TV', 'Funimation');

-- 2
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 2, 2, 'Overlord', 13, '2015-07-07', 'finished airing', 24, 7.95, 'TV', 'Funimation');

-- 3
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 3, 3, 'One Piece', 967, '1999-10-20', 'airing', 24, 8.53, 'TV', 'Funimation');

-- 4
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 4, 4, 'Naruto', 220, '2002-10-03', 'finished airing', 23, 7.91, 'TV', 'VIZ Media');

-- 5
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 5, 5, 'Detective Conan', 998, '1996-01-08', 'airing', 25, 8.16, 'TV', 'Funimation');

-- 6
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 6, 6, 'Haikyuu', 25, '2014-04-06', 'finished airing', 24, 8.54, 'TV', 'Sentai Filmworks'); -- voice actor van Sawamura Daichi

-- 7
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 7, 7, 'Yu-Gi-Oh! 5Ds', 154, '2008-04-02', 'finished airing', 24, 7.41, 'TV', '4Kids Entertainment');

-- 8
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 8, 8, 'Fullmetal Alchemist', 51, '2003-10-04', 'finished airing', 24, 8.16, 'TV', 'Aniplex');

-- 9
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 9, 9, 'Demon Slayer: Kimetsu no Yaiba', 26, '2019-04-06', 'finished airing', 23, 8.61, 'TV', 'Aniplex');

-- 10
SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type, licensers)
VALUES( 10, 4, 'Bleach', 26, '2004-10-05', 'finished airing', 24, 7.80, 'TV', 'VIZ Media');