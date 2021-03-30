-- studio 1 = 8bit
-- studio 2 = Madhoude
-- studio 3 = Toei Animation
-- studio 4 = Studio Pierrot
-- studio 5 = TMS Entertainment
-- studio 6 = Production I.G

SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, licensers)
VALUES( 1, 1, 'That Time I Got Reincarnated as a Slime', 24, '2018-10-02', 'finished airing', 23, 8.07, 'Funimation');

SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, licensers)
VALUES( 2, 2, 'Overlord', 13, '2015-07-07', 'finished airing', 24, 7.95, 'Funimation');

SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, licensers)
VALUES( 3, 3, 'One Piece', 967, '1999-10-20', 'airing', 24, 8.53, 'Funimation');

SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, licensers)
VALUES( 4, 4, 'Naruto', 220, '2002-10-03', 'finished airing', 23, 7.91, 'VIZ Media');

SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, licensers)
VALUES( 5, 5, 'Detective Conan', 998, '1996-01-08', 'airing', 25, 8.16, 'Funimation');

SET IDENTITY_INSERT Project_MAL.Anime ON
INSERT INTO Project_MAL.Anime(animeId, studioId, name, episodes, aired, status, duration, rating, licensers)
VALUES( 6, 6, 'Haikyuu', 25, '2014-04-06', 'finished airing', 24, 8.54, 'Sentai Filmworks'); -- voice actor van Sawamura Daichi