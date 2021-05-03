CREATE TABLE [User]
(
	[userId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[age] int NOT NULL,
	[email] varchar(40) NOT NULL,
	[sex] varchar(20) NULL,
	[birthday] date NOT NULL,
	[location] varchar(40) NULL,
	[joined] date NOT NULL,
	[familyName] varchar(40) NOT NULL,
	[userName] varchar(40) NOT NULL,
	CONSTRAINT [PK_User]
		PRIMARY KEY ([userId])
)
GO
SET IDENTITY_INSERT [User] ON
INSERT INTO [User](userId, name, age, email, sex, birthday, location, joined, familyName, userName)
VALUES(1, 'Jarne', 'jarne.bauwens@me.com', '1998-08-18', 'Antwerpen', '2020-12-08', 'Bauwens', 'Kiritto');
SET IDENTITY_INSERT [User] ON
INSERT INTO [User](userId, name, age, email, sex, birthday, location, joined, familyName, userName)
VALUES(2, 'Dennis Luyten', 'dennis.luyten@hotmail.be', '2003-02-27', 'Mechelen', '2016-03-16', 'Luyten', 'Kiiro');
SET IDENTITY_INSERT [User] ON
INSERT INTO [User](userId, name, age, email, sex, birthday, location, joined, familyName, userName)
VALUES(3, 'John', 'Appleseed32@gmail.com', '2000-07-01', 'America', '2010-11-28', 'Appleseed', 'JohnA');
SET IDENTITY_INSERT [User] ON
INSERT INTO [User](userId, name, email, birthday, location, joined, familyName, userName)
VALUES(4, 'Caroline', 'CarolineGorgo@hotmail.com', '1992-05-12', 'Spane', '2016-07-28', 'Gorgonzela', 'CarolineG');
SET IDENTITY_INSERT [User] ON
INSERT INTO [User](userId, name, email, birthday, location, joined, familyName, userName)
VALUES(5, 'Johanna', 'Grace.Johanna@me.com.be', '2003-02-27', 'United Kingdom', '2014-09-03', 'Grace', 'JohannaG');
CREATE TABLE Collection
(
	[collectionId] int IDENTITY(1,1) NOT NULL,
	[userId] int NULL,
	CONSTRAINT [PK_Collection]
		PRIMARY KEY ([collectionId]),
	CONSTRAINT [FK_Gebruiker]
		FOREIGN KEY ([userId])
		REFERENCES [User](userId)
)
GO
SET IDENTITY_INSERT Collection ON
INSERT INTO Collection(collectionId, userId)
VALUES(1, 1);
SET IDENTITY_INSERT Collection ON
INSERT INTO Collection(collectionId, userId)
VALUES(2, 2);
SET IDENTITY_INSERT Collection ON
INSERT INTO Collection(collectionId, userId)
VALUES(3, 3);
SET IDENTITY_INSERT Collection ON
INSERT INTO Collection(collectionId, userId)
VALUES(4, 4);
SET IDENTITY_INSERT Collection ON
INSERT INTO Collection(collectionId, userId)
VALUES(5, 5);
CREATE TABLE Studio
(
	[studioId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(40) NOT NULL,
	[producer] varchar(40) NOT NULL,
	[location] varchar(40) NOT NULL,
	CONSTRAINT [PK_Studio]
		PRIMARY KEY ([studioId])
)
GO
SET IDENTITY_INSERT Studio On
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 1, '8bit', '8bit', 'Suginami');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 2, 'Madhouse', 'Masao Maruyama', n'Honchō');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 3, 'Toei Animation', n'Kenzō Masaoka', 'Oizumi');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 4, 'Studio Pierrot', 'Studio Pierrot', 'Mitaka');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 5, 'TMS Entertainment', 'Sega Sammy Holdings', 'Nakano');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 6, 'Production I.G', 'Mitsuhisa Ishikawa', 'Kokubunji');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 7, 'Gallop', 'Akio Wakana', 'Nerima');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 8, 'Bones', 'Masahiko Minami', ' Suginami');
SET IDENTITY_INSERT Studio ON
INSERT INTO Studio(studioId, name, producer, location)
VALUES( 9, 'Ufotable', 'Hikaru Kondo', ' Nakano');
GO
CREATE TABLE Anime
(
	[animeId] int IDENTITY(1,1) NOT NULL,
	[studioId] int NULL,
	[name] varchar(40) NOT NULL,
	[episodes] int NOT NULL,
	[aired] date NOT NULL,
	[status] varchar(20) NOT NULL,
	[duration] int NOT NULL,
	[rating] int NULL,
	[type] varchar(20) NOT NULL,
	CONSTRAINT [PK_Anime]
		PRIMARY KEY ([animeId]),
	CONSTRAINT [FK_Studio]
		FOREIGN KEY ([studioId])
		REFERENCES [Studio](studioId)
)
GO
SET IDENTITY_INSERT Anime on
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 1, 1, 'That Time I Got Reincarnated as a Slime', 24, '2018-10-02', 'finished airing', 23, 8.08, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 2, 2, 'Overlord', 13, '2015-07-07', 'finished airing', 24, 7.95, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 3, 3, 'One Piece', 967, '1999-10-20', 'airing', 24, 8.53, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 4, 4, 'Naruto', 220, '2002-10-03', 'finished airing', 23, 7.91, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 5, 5, 'Detective Conan', 998, '1996-01-08', 'airing', 25, 8.16, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 6, 6, 'Haikyuu', 25, '2014-04-06', 'finished airing', 24, 8.54, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 7, 7, 'Yu-Gi-Oh! 5Ds', 154, '2008-04-02', 'finished airing', 24, 7.41, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 8, 8, 'Fullmetal Alchemist', 51, '2003-10-04', 'finished airing', 24, 8.16, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 9, 9, 'Demon Slayer: Kimetsu no Yaiba', 26, '2019-04-06', 'finished airing', 23, 8.61, 'TV');
SET IDENTITY_INSERT Anime ON
INSERT INTO Anime(animeId, studioId, name, episodes, aired, status, duration, rating, type)
VALUES( 10, 4, 'Bleach', 26, '2004-10-05', 'finished airing', 24, 7.80, 'TV');
CREATE TABLE Genre
(
	[genreId] int IDENTITY(1,1) NOT NULL,
	[nameGenre] varchar(100) NOT NULL,
	CONSTRAINT [PK_Genre]
		PRIMARY KEY ([genreId]),
)
Go
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(1, 1, null, 'Action, Adventure, Martial Arts, Shounen, Super Power');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(2, 2, 8, 'Action, Adventure, Comedy, Drama, Shounen, Military');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(3, 3, null, 'Action, Comedy, Fantasy, Magic, Shounen');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(4, 3, null, 'Action, Adventure, Comedy, Drama, Sci-Fi, Shounen, Supernatural');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(5, 5, null, 'Action, Adventure, Fantasy, Horror, Shounen');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(6, 6, 10, 'Action, Adventure, Shounen, Super Power, Supernatural');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(7, 7, 9, 'Action, Demons, Historical, Shounen, Supernatural');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(8, 8, null, 'Action, Adventure, Comedy, Shounen, Super Power, Supernatural');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(9, 9, null, 'Fantasy, Shounen');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(10, 10, null, 'Action, Adventure, Comedy, Martial Arts, Sci-Fi, Shounen, Super Power');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(9, null, 1, 'Fantasy, Shounen');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(10, null, 2, 'Action, Adventure, Fantasy, Game, Magic, Supernatural');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(11, null, 3, 'Action, Adventure, Comedy, Martial Arts, Drama, Shounen, Fantasy, Super Power');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(12, null, 5, 'Adventure, Mystery, Comedy, Police, Shounen');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(13, null, 6, 'Comedy, Sport, Drama, School, Shounen');
SET IDENTITY_INSERT Project_MAL.Genre ON
INSERT INTO Project_MAL.Genre(genreId, mangaGenreId, animeGenreId, nameGenre)
VALUES(14, null, 4, 'Action, Adventure, Comedy, Shounen, Super Power, Supernatural');
CREATE TABLE AnimeCollection
(
	[animeCollectionId] int IDENTITY(1,1) NOT NULL,
	[animeId] int NULL,
	[collectionId] int NULL,
	CONSTRAINT [PK_AnimeCollection]
		PRIMARY KEY ([animeCollectionId]),
	CONSTRAINT [FK_Anime]
		FOREIGN KEY ([animeId])
		REFERENCES [Project_MAL].[Anime](animeId),
	CONSTRAINT [FK_Collection]
		FOREIGN KEY ([collectionId])
		REFERENCES [Collection](collectionId)
)
GO
CREATE TABLE AnimeGenre
(
	[animeGenreId] int IDENTITY(1,1) NOT NULL,
	[animeId] int NOT NULL,
	[genreId] int NULL,
	CONSTRAINT [PK_AnimeGenre]
		PRIMARY KEY ([animeGenreId]),
	CONSTRAINT [FK_GenreAnime]
		FOREIGN KEY ([animeId])
		REFERENCES [Anime](animeId),
	CONSTRAINT [FK_GenreGenre]
		FOREIGN KEY ([genreId])
		REFERENCES [Genre](genreId)
)
GO
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(1, 1, 9);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(2, 2, 10);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(3, 3, 11);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(4, 4, 14);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(5, 5, 12);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(6, 6, 13);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(7, 7, null);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(8, 8, 2);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(9, 9, 9);
SET IDENTITY_INSERT AnimeGenre on
INSERT INTO AnimeGenre(animeGenreId, animeId, genreId)
VALUES(10, 10, 6);
