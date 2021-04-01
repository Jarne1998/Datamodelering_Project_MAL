-- GPR LTI d1.1 Jarne Bauwens & Dennis Luyten
-- Opvullen van Genre table

-- 1)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, naamGenre)
VALUES(1, 1, 0, 'Action, Adventure, Martial Arts, Shounen, Super Power');

-- 2)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(2, 2, 8, 'Action, Adventure, Comedy, Drama, Shounen, Military');

-- 3)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, naamGenre)
VALUES(3, 3, 0, 'Action, Comedy, Fantasy, Magic, Shounen');

-- 4)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, naamGenre)
VALUES(4, 3, 0, 'Action, Adventure, Comedy, Drama, Sci-Fi, Shounen, Supernatural');

-- 5)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, naamGenre)
VALUES(5, 5, 0, 'Action, Adventure, Fantasy, Horror, Shounen');

-- 6)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(6, 6, 10, 'Action, Adventure, Shounen, Super Power, Supernatural');

-- 7)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(7, 7, 9, 'Action, Demons, Historical, Shounen, Supernatural');


-- 8)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, naamGenre)
VALUES(8, 8, 0, 'Action, Adventure, Comedy, Shounen, Super Power, Supernatural');

-- 9)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, naamGenre)
VALUES(9, 9, 0, 'Fantasy, Shounen');

-- 10)
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(10, 10, 0, 'Action, Adventure, Comedy, Martial Arts, Sci-Fi, Shounen, Super Power');

SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(9, 0, 1, 'Fantasy, Shounen');

SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(10, 0, 2, 'Action, Adventure, Fantasy, Game, Magic, Supernatural');

SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(11, 0, 3, 'Action, Adventure, Comedy, Martial Arts, Drama, Shounen, Fantasy, Super Power');

SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(12, 0, 5, 'Adventure, Mystery, Comedy, Police, Shounen');

SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(13, 0, 6, 'Comedy, Sport, Drama, School, Shounen');

SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaId, animeId, naamGenre)
VALUES(14, 8, 4, 'Action, Adventure, Comedy, Shounen, Super Power, Supernatural');